using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class GameBoardView : Page, IGameManagerCallback
    {

        private bool isFirstPiecePlaced = false;
        private GameManagerClient gameManagerClient;
        private GamePiece selectedPiece;
        private Polygon lastPlacedCell;
        private Dictionary<Point, Polygon> cellDictionary = new Dictionary<Point, Polygon>();
        private Dictionary<Point, Logic.Piece> board = new Dictionary<Point, Logic.Piece>();
        private List<UserSession> usersInGame;
        private int numberOfPlayer = 0;
        private string usernamePlayer1 = "";
        private string usernamePlayer2 = "";

        private List<GamePiece> player1Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), "player1"),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),"player1")
            };

        private List<GamePiece> player2Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1), "player2")
            };

        public GameBoardView()
        {
            gameManagerClient = new GameManagerClient(new InstanceContext(this));
            InitializeComponent();
            InitializeBoard();
            ConnectToGameBoard();
            Constants.isInMatch = true;
        }

        private void ConnectToGameBoard()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount,
                    codeMatch = MatchSingleton.codeMatch
                };
                gameManagerClient.ConnectToGameBoard(userSession, userSession.codeMatch);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
        }


        private void LoadPlayerPieces(StackPanel playerPiecesPanel, List<GamePiece> pieces, string username)
        {
            for (int indexPieces = 0; indexPieces < pieces.Count; indexPieces++)
            {
                pieces[indexPieces].playerName = username;
            }
            playerPiecesPanel.Children.Clear();
            foreach (var piece in pieces)
            {
                for (int i = 0; i < piece.Piece.Count; i++)
                {
                    piece.playerName = username;
                    var image = new Image
                    {
                        Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                        Width = 50,
                        Height = 50,
                        Margin = new Thickness(0, -i * 25, 0, 0),
                        Tag = piece,
                        DataContext = piece
                    };
                    image.MouseDown += Piece_MouseDown;
                    playerPiecesPanel.Children.Add(image);
                }
            }
        }

        private void InitializeBoard()
        {
            int rows = 13;
            int columns = 13;
            double hexagonSize = 26;
            double xOffset = hexagonSize * Math.Sqrt(3);
            double yOffset = hexagonSize * 1.5;

            GameBoardGrid.Children.Clear();
            cellDictionary.Clear();

            for (int row = 0; row < rows; row++)
            {
                for (int col = 0; col < columns; col++)
                {
                    var hexagon = new Polygon
                    {
                        Points = CreateHexagonPoints(hexagonSize),
                        Tag = new Point(row, col)
                    };
                    hexagon.MouseDown += Cell_MouseDown;

                    double x = col * xOffset;
                    double y = row * yOffset;
                    if (row % 2 == 1) x += xOffset / 2;

                    Canvas.SetLeft(hexagon, x);
                    Canvas.SetTop(hexagon, y);
                    GameBoardGrid.Children.Add(hexagon);
                    cellDictionary[new Point(row, col)] = hexagon;
                }
            }
        }

        private void Piece_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is Image pieceImage && pieceImage.DataContext is GamePiece piece && piece.playerName == UserProfileSingleton.username)
            {
                selectedPiece = piece;

                if (!isFirstPiecePlaced)
                {
                    if (cellDictionary.TryGetValue(new Point(6, 6), out Polygon centerCell) && !board.ContainsKey(new Point(6, 6)))
                    {
                        HighlightCell(new Point(6, 6));
                        PlacePieceOnCell(lastPlacedCell);
                    }
                    else
                    {

                        HighlightAvailableStartingCells();
                    }
                }
                else
                {

                    HighlightAvailableMoves(lastPlacedCell);
                }
            }
        }

        private void PieceOnBoard_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Si no hay una pieza seleccionada, no hacemos nada.
            if (selectedPiece == null)
            {
                return;
            }

            // Caso cuando se selecciona una pieza en el tablero
            if (sender is Image pieceImage && pieceImage.DataContext is GamePiece piece)
            {
                // Verificamos si la pieza seleccionada está en el tablero y pertenece al jugador actual
                // Aseguramos que la pieza está ya colocada en el tablero (es decir, no está en las piezas disponibles)
                if (piece.Position != null && piece.playerName == UserProfileSingleton.username)
                {
                    selectedPiece = piece;

                    // Resaltamos las celdas disponibles para mover la pieza
                    if (cellDictionary.TryGetValue(piece.Position, out Polygon cell))
                    {
                        HighlightAvailableMoves(cell);
                    }
                }
                // Si la pieza está fuera del tablero (es una pieza del inventario del jugador), no hacemos nada
                else
                {
                    return;  // No hacer nada si la pieza no está en el tablero
                }
            }
            // Caso cuando se selecciona una celda del tablero para colocar una pieza
            else if (sender is Polygon cell)
            {
                // Si ya hay una pieza seleccionada y la celda es válida para colocarla
                if (selectedPiece != null && cell != null)
                {
                    // Obtenemos la posición de la celda donde el jugador quiere colocar la pieza
                    Point targetPosition = (Point)cell.Tag;

                    // Verificamos si el movimiento es válido antes de colocar la pieza
                    if (selectedPiece.Piece.IsValidMove(selectedPiece.Position, targetPosition, board))
                    {
                        PlacePieceOnCell(cell);  // Coloca la pieza en la celda
                    }
                }
            }
        }


        private void HighlightAvailableStartingCells()
        {
            ResetHighlights();

            Point startPosition = lastPlacedCell?.Tag is Point pos ? pos : new Point(6, 6);

            var adjacentOffsets = new List<Point>
            {
                new Point(startPosition.X - 1, startPosition.Y),
                new Point(startPosition.X + 1, startPosition.Y),
                new Point(startPosition.X, startPosition.Y - 1),
                new Point(startPosition.X, startPosition.Y + 1),
                new Point(startPosition.X - 1, startPosition.Y + 1),
                new Point(startPosition.X + 1, startPosition.Y - 1)
            };

            foreach (var offset in adjacentOffsets)
            {
                if (cellDictionary.TryGetValue(offset, out Polygon cell) && !board.ContainsKey(offset))
                {
                    cell.Fill = Brushes.LightGreen;
                    cell.IsEnabled = true;
                    cell.MouseDown += Cell_MouseDown;
                }
            }
        }



        private PointCollection CreateHexagonPoints(double size)
        {
            var points = new PointCollection();
            for (int i = 0; i < 6; i++)
            {
                double angle = (i * 60 + 30) * Math.PI / 180;
                points.Add(new Point(size * Math.Cos(angle), size * Math.Sin(angle)));
            }
            return points;
        }

        private void HighlightCell(Point position)
        {
            if (cellDictionary.TryGetValue(position, out Polygon cell))
            {
                cell.Fill = Brushes.Yellow;
                lastPlacedCell = cell;
            }
        }

        private void HighlightAvailableMoves(Polygon lastPlacedCell)
        {
            if (lastPlacedCell == null || selectedPiece == null)
            {
                return;
            }

            var position = (Point)lastPlacedCell.Tag;

            var adjacentOffsets = new List<Point>
            {
                new Point(position.X - 1, position.Y),
                new Point(position.X + 1, position.Y),
                new Point(position.X, position.Y - 1),
                new Point(position.X, position.Y + 1),
                new Point(position.X - 1, position.Y + 1),
                new Point(position.X + 1, position.Y - 1)
            };

            foreach (var offset in adjacentOffsets)
            {
                if (cellDictionary.TryGetValue(offset, out Polygon cell))
                {

                    if (selectedPiece.Piece.IsValidMove(selectedPiece.Position, offset, board))
                    {
                        cell.Fill = Brushes.LightGreen;
                    }
                }
            }
        }


        private void Cell_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (selectedPiece != null && sender is Polygon cell)
            {
                var targetPosition = (Point)cell.Tag;
                if (!isFirstPiecePlaced || selectedPiece.Piece.IsValidMove(selectedPiece.Position, targetPosition, board))
                {
                    PlacePieceOnCell(cell);
                }
                if (isFirstPiecePlaced || selectedPiece.Piece.IsValidMove(selectedPiece.Position, targetPosition, board))
                {
                    PlacePieceOnCell(cell);
                }
            }
        }




        private void PlacePieceOnCell(Polygon cell)
        {
            if (cell != null)
            {
                var pieceImage = new Image
                {
                    Source = new BitmapImage(new Uri(selectedPiece.ImagePath, UriKind.Relative)),
                    Width = 48,
                    Height = 48,
                };

                foreach (var polygon in GameBoardGrid.Children.OfType<Polygon>())
                {
                    polygon.IsEnabled = false;
                    polygon.MouseDown -= Cell_MouseDown;
                }
                double hexX = Canvas.GetLeft(cell);
                double hexY = Canvas.GetTop(cell);
                double pieceX = hexX + (cell.ActualWidth - pieceImage.Width) / 1;
                double pieceY = hexY + (cell.ActualHeight - pieceImage.Height) / 1;
                Canvas.SetLeft(pieceImage, pieceX);
                Canvas.SetTop(pieceImage, pieceY);
                GameBoardGrid.Children.Add(pieceImage);
                selectedPiece.Position = (Point)cell.Tag;
                board[selectedPiece.Position] = selectedPiece.Piece;
                RemovePieceFromPlayer(selectedPiece);
                SendPiecePositionToServer(selectedPiece);
                lastPlacedCell = cell;
                isFirstPiecePlaced = true;
                selectedPiece = null;
                ResetHighlights();


            }
        }



        private void SendPiecePositionToServer(Logic.GamePiece gamePiece)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.Piece pieceMoved = new HiveProxy.Piece()
                {
                    name = gamePiece.Piece.Name,
                    count = gamePiece.Piece.Count,
                    position = gamePiece.Piece.Position
                };
                HiveProxy.GamePice gamePieceMoved = new HiveProxy.GamePice()
                {
                    playerName = gamePiece.playerName,
                    piece = pieceMoved,
                    imagePath = gamePiece.ImagePath,
                    position = gamePiece.Position,
                };
                UserSession userSession = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username,
                    codeMatch = MatchSingleton.codeMatch
                };
                gameManagerClient.MovePiece(gamePieceMoved, userSession, userSession.codeMatch);
                gameManagerClient.SetTurns(userSession, userSession.codeMatch);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ReturnToLoginView();
            }
        }

        private void RemovePieceFromPlayer(GamePiece piece)
        {
            if (player1Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player1Pieces.Children.OfType<Image>())
                {
                    if (child.Tag == piece)
                    {
                        stckp_Player1Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
            else if (player2Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player2Pieces.Children.OfType<Image>())
                {
                    if (child.Tag == piece)
                    {
                        stckp_Player2Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
        }

        private void ResetHighlights()
        {
            foreach (UIElement element in GameBoardGrid.Children)
            {
                if (element is Polygon cell)
                {
                    cell.Fill = Brushes.Transparent;
                }
            }
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogManagerConfirmationLeaveMatch))
            {
                if(UserProfileSingleton.idAccount == Constants.DEFAULT_GUEST_ID)
                {
                    DisconnectGuestPlayer();
                }
                else
                {
                    DisconnectNormalPlayer();
                }
            }
        }

        private void DisconnectGuestPlayer()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserSessionManagerClient userSessionManagerClient = new UserSessionManagerClient();
                UserSession session = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username,
                    codeMatch = MatchSingleton.codeMatch,
                };
                gameManagerClient.LeaveTheGame(session, session.codeMatch);
                userSessionManagerClient.Disconnect(session, false);
                ReturnToLoginView();

            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ReturnToLoginView();
            }
        }

        private void DisconnectNormalPlayer()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserManagerClient userManagerClient = new UserManagerClient();
                HiveProxy.LeaderBoardManagerClient leaderBoardManagerClient = new LeaderBoardManagerClient();
                int resultModification = userManagerClient.UpdateMinusUserReputation(UserProfileSingleton.username, 100);
                if (resultModification == Constants.SUCCES_OPERATION)
                {
                    leaderBoardManagerClient.UpdateLoserResultToPlayerLeaderBoard(UserProfileSingleton.idAccount);
                    UserSession session = new UserSession()
                    {
                        idAccount = UserProfileSingleton.idAccount,
                        username = UserProfileSingleton.username,
                        codeMatch = MatchSingleton.codeMatch,
                    };
                    gameManagerClient.LeaveTheGame(session, session.codeMatch);
                    GoToMainView();
                }
                else if (resultModification == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ReturnToLoginView();
            }
        }

        private void GoToMainView()
        {
            MatchSingleton.Instance.ResetSingleton();
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }

        public void ChargePlayerGameBoard(PlayerSide side)
        {
            if (side.playerOne)
            {
                DockPanel.SetDock(stckp_Player1,Dock.Bottom);
                DockPanel.SetDock(stckp_Player2, Dock.Top);
                img_ProfilePic1.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtbl_PlayerName1.Text = UserProfileSingleton.username;
                stckp_Player2.IsEnabled = false;      
                numberOfPlayer = 1;
            }
            else if (side.playerTwo)
            {
                DockPanel.SetDock(stckp_Player2,Dock.Bottom);
                DockPanel.SetDock(stckp_Player1,Dock.Top);
                stckp_Player1.IsEnabled = false;
                img_ProfilePic2.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtbl_PlayerName2.Text = UserProfileSingleton.username;
                numberOfPlayer = 2;
            }
            DockPanel dockPanel = (DockPanel)this.Content;
            dockPanel.UpdateLayout();
        }

        public void ReceivePieceMoved(HiveProxy.GamePice piece)
        {
            Logic.Piece pieceReceived = CreateConcretePieceType(piece);
            Logic.GamePiece gamePieceReceived = new Logic.GamePiece()
            {
                Piece = pieceReceived,
                playerName = piece.playerName,
                Position = piece.position,
                ImagePath = piece.imagePath,
            };
            if (piece != null && gamePieceReceived.Position != null)
            {
                if (board.TryGetValue(gamePieceReceived.Position, out var existingPiece))
                {
                    board.Remove(existingPiece.Position);
                }
                board[gamePieceReceived.Position] = gamePieceReceived.Piece;
                UpdatePiecePositionOnBoard(gamePieceReceived);
                RemovePieceReceiveFromPlayerStackPanel(gamePieceReceived);
            }
        }

        private Logic.Piece CreateConcretePieceType(HiveProxy.GamePice piece)
        {
            Logic.Piece pieceObtained = null;
            string typeOfPiece = piece.piece.name;
            switch (typeOfPiece)
            {
                case "Queen":
                    pieceObtained = new Queen();
                    break;
                case "Spider":
                    pieceObtained = new Spider();
                    break;
                case "Beetle":
                    pieceObtained = new Beetle();
                    break;
                case "Ant":
                    pieceObtained = new Ant();
                    break;
                case "Grasshopper":
                    pieceObtained = new Grasshopper();
                    break;
            }
            return pieceObtained;
        }

        private void RemovePieceReceiveFromPlayerStackPanel(GamePiece piece)
        {
            piece.Position = new Point(-1, -1);
            if (player1Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player1Pieces.Children.OfType<Image>())
                {
                    if (child.Tag is GamePiece tagPiece && tagPiece.Equals(piece)) 
                    {
                        stckp_Player1Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
            else if (player2Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player2Pieces.Children.OfType<Image>())
                {
                    if (child.Tag is GamePiece tagPiece && tagPiece.Equals(piece))
                    {
                        stckp_Player2Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
        }

        private void UpdatePiecePositionOnBoard(GamePiece piece)
        {
            if (cellDictionary.TryGetValue(piece.Position, out var cell))
            {
                PlacePieceReceivedOnCell(cell, piece);
            }
        }
        private void PlacePieceReceivedOnCell(Polygon cell, GamePiece piece)
        {
            if (cell != null && piece != null)
            {
                var pieceImage = new Image
                {
                    Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                    Width = 48,
                    Height = 48,
                };
                double hexX = Canvas.GetLeft(cell);
                double hexY = Canvas.GetTop(cell);
                double pieceX = hexX + (cell.ActualWidth - pieceImage.Width) / 1;
                double pieceY = hexY + (cell.ActualHeight - pieceImage.Height) / 1;
                Canvas.SetLeft(pieceImage, pieceX);
                Canvas.SetTop(pieceImage, pieceY);
                GameBoardGrid.Children.Add(pieceImage);
                piece.Position = (Point)cell.Tag;
                board[piece.Position] = piece.Piece;
                lastPlacedCell = cell;
                ResetHighlights();
            }
        }


        public void ReceiveTurns(bool isTurn)
        {
            if (isTurn)
            {
                txtbl_PlayerName.Text = UserProfileSingleton.username;
                if(numberOfPlayer == 1)
                {
                    stckp_Player1.IsEnabled = true;
                }
                else
                {
                    stckp_Player2.IsEnabled = true;
                }
            }
            else
            {
                for (int indexUsersInMatch = 0; indexUsersInMatch < usersInGame.Count; indexUsersInMatch++)
                {
                    if (usersInGame[indexUsersInMatch].username != UserProfileSingleton.username)
                    {
                        txtbl_PlayerName.Text = usersInGame[indexUsersInMatch].username;
                    }
                }
                if (numberOfPlayer == 1)
                {
                    stckp_Player1.IsEnabled = false;
                }
                else
                {
                    stckp_Player2.IsEnabled = false;
                }
            }
        }

        public void ReceivePlayersToMatch(UserSession[] usersInMatch)
        {
            usersInGame = usersInMatch.ToList();

            for(int indexUsersInMatch = 0;indexUsersInMatch < usersInGame.Count;indexUsersInMatch++)
            {
                UserSession user = usersInGame[indexUsersInMatch];  
                Profile profileUser = GetUserProfile(user);
                UpdatePlayerDisplay(user, profileUser);
            }
        }
        private Profile GetUserProfile(UserSession user)
        {
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            Profile profileUser = userManagerClient.GetUserProfileByUsername(user.username);

            if (profileUser.idAccesAccount == Constants.ERROR_OPERATION || user.idAccount == Constants.DEFAULT_GUEST_ID)
            {
                profileUser.imagePath = "/Images/Avatars/Avatar1.png";
            }

            return profileUser;
        }

        private void UpdatePlayerDisplay(UserSession user, Profile profileUser)
        {
            usernamePlayer1 = usersInGame[0].username;
            if (IsPlayer1SlotAvailable(user))
            {
                txtbl_PlayerName1.Text = user.username;
                img_ProfilePic1.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                LoadPlayerPieces(stckp_Player1Pieces, player1Pieces, usernamePlayer1);
                LoadPlayerPieces(stckp_Player2Pieces, player2Pieces, usernamePlayer2);
            }
            if (usersInGame.Count == 2)
            {
                usernamePlayer2 = usersInGame[1].username;
                if (IsPlayer2SlotAvailable(user))
                {
                    txtbl_PlayerName2.Text = user.username;
                    img_ProfilePic2.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                    LoadPlayerPieces(stckp_Player1Pieces, player1Pieces, usernamePlayer1);
                    LoadPlayerPieces(stckp_Player2Pieces, player2Pieces, usernamePlayer2);
                }
            }
        }


        private bool IsPlayer1SlotAvailable(UserSession user)
        {
            return txtbl_PlayerName1.Text == Properties.Resources.txtbl_Player1 &&
                   txtbl_PlayerName2.Text == UserProfileSingleton.username &&
                   !user.username.Equals(txtbl_PlayerName2.Text);
        }

        private bool IsPlayer2SlotAvailable(UserSession user)
        {
            return txtbl_PlayerName2.Text == Properties.Resources.txtbl_Player2 &&
                   txtbl_PlayerName1.Text == UserProfileSingleton.username &&
                   !user.username.Equals(txtbl_PlayerName1.Text);
        }

        public void ReceivePlayerHasLeftNotification(bool doPlayerLeftTheGame)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            bool exceptionAppear = false;
            if (doPlayerLeftTheGame)
            {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogUserHasLeftTheMatch);
                try
                {
                    UserSession userSession = new UserSession()
                    {
                        username = UserProfileSingleton.username,
                        idAccount = UserProfileSingleton.idAccount,
                        codeMatch = MatchSingleton.codeMatch
                    };
                    if (UserProfileSingleton.idAccount!=Constants.DEFAULT_GUEST_ID)
                    {
                        HiveProxy.UserManagerClient userManagerClient = new UserManagerClient();
                        userManagerClient.UpdatePlusUserReputation(userSession.username, 25);
                    }
                    gameManagerClient.LeaveTheGame(userSession, userSession.codeMatch);
                }
                catch (EndpointNotFoundException endPointException)
                {
                    logger.LogError(endPointException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                    exceptionAppear = true;
                }
                catch (TimeoutException timeOutException)
                {
                    logger.LogError(timeOutException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogError(communicationException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                    exceptionAppear = true;
                }
                if (exceptionAppear)
                {
                    ReturnToLoginView();
                }
                else
                {
                    if (UserProfileSingleton.idAccount == Constants.DEFAULT_GUEST_ID)
                    {
                        ReturnToLoginView();
                    }
                    else 
                    {
                        GoToMainView();
                    }
                }
            }
        }

        public void ReturnToLoginView()
        {
            MatchSingleton.Instance.ResetSingleton();
            UserProfileSingleton.Instance.ResetSingleton();
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

    }
}
