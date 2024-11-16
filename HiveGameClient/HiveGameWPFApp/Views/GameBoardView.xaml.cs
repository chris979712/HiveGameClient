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
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), "player1"),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), "player1"),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), "player1"),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),"player1"),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),"player1")
            };

        private List<GamePiece> player2Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1),"player2"),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1), "player2"),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1), "player2"),
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
                pieces[indexPieces].Piece.playerName = username;
            }
            playerPiecesPanel.Children.Clear();
            for (int i = 0; i < pieces.Count; i++)
            {
                var piece = pieces[i];
                piece.playerName = username;
                piece.Piece.playerName = username;
                var image = new Image
                {
                    Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                    Width = 50,
                    Height = 50,
                    Margin = new Thickness(0, 0 * 25, 0, 0),
                    Tag = piece,
                    DataContext = piece
                };
                image.MouseDown += Piece_MouseDown;
                playerPiecesPanel.Children.Add(image);
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
                        Tag = new Point(row, col),
                    };
                    hexagon.IsEnabled = false;
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
                        HighlightStartingFirstTurnStaterCell(new Point(6, 6));
                        PlacePieceOnCell(lastPlacedCell);
                    }
                    else
                    {

                        HigligthStartingFirstTurnOponentCell(new Point(6, 6));
                    }
                }
                else
                {
                    Point staterMove = new Point(-1, -1);
                    if (selectedPiece.Position == staterMove)
                    {
                        HighlightAvailableStartingCells();
                    }
                    
                }
            }
        }
        private void PieceOnBoard_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is Image pieceImage && pieceImage.DataContext is GamePiece piece && piece.playerName == UserProfileSingleton.username)
            {
                switch (selectedPiece.Piece)
                {
                    case Queen _:
                    case Spider _:
                    case Beetle _:
                    case Ant _:
                    case Grasshopper _:
                        MovePieceAnywhere(selectedPiece);
                        break;

                    default:
                        MessageBox.Show("Pieza no reconocida o no implementada");
                        break;
                }
            }
        }

        private void MovePieceAnywhere(Logic.GamePiece piece)
        {
            // Aquí podrías habilitar todas las celdas del tablero como válidas para mover
            foreach (var cell in cellDictionary.Values)
            {
                cell.IsEnabled = true; // Habilita la celda para ser seleccionada
                cell.Fill = Brushes.LightGreen; // Opcional: destacar la celda para indicar que es válida

                // Asocia un evento para manejar el clic en la celda y mover la pieza
                cell.MouseDown += (s, args) =>
                {
                    if (s is Polygon selectedCell)
                    {
                        // Mueve la pieza a la celda seleccionada
                        PlacePieceOnCell(selectedCell, piece);
                        ResetHighlights(); // Limpia las celdas destacadas
                    }
                };
            }
        }

        private void PlacePieceOnCell(Polygon cell, Logic.GamePiece piece)
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
                double pieceX = hexX + (cell.ActualWidth - pieceImage.Width) / 2;
                double pieceY = hexY + (cell.ActualHeight - pieceImage.Height) / 2;
                Canvas.SetLeft(pieceImage, pieceX);
                Canvas.SetTop(pieceImage, pieceY);
                GameBoardGrid.Children.Add(pieceImage);

               
                piece.Position = (Point)cell.Tag;
                board[piece.Position] = piece.Piece;
            }
        }

        private void MoveQueen(Point currentPosition)
        {
            // Implementa las reglas de movimiento específicas de la Reina
            // Esto podría incluir verificar celdas adyacentes donde la Reina puede moverse
        }

        private void MoveSpider(Point currentPosition)
        {
            // Implementa las reglas de movimiento específicas de la Reina
            // Esto podría incluir verificar celdas adyacentes donde la Reina puede moverse
        }

        private void MoveBeetle(Point currentPosition)
        {
            // Implementa las reglas de movimiento específicas de la Reina
            // Esto podría incluir verificar celdas adyacentes donde la Reina puede moverse
        }

        private void MoveAnt(Point currentPosition)
        {
            // Implementa las reglas de movimiento específicas de la Reina
            // Esto podría incluir verificar celdas adyacentes donde la Reina puede moverse
        }

        private void MoveGrasshopper(Point currentPosition)
        {
            // Implementa las reglas de movimiento específicas de la Reina
            // Esto podría incluir verificar celdas adyacentes donde la Reina puede moverse
        }



        private void HighlightStartingFirstTurnStaterCell(Point position)
        {
            if (cellDictionary.TryGetValue(position, out Polygon cell))
            {
                cell.Fill = Brushes.Yellow;
                lastPlacedCell = cell;
            }
        }

        private void HigligthStartingFirstTurnOponentCell(Point position)
        {
            ResetHighlights();
            var checkedPositions = new HashSet<Point>();
            foreach (var piecePosition in board.Keys)
            {
                if (board.TryGetValue(piecePosition, out var currentStarterPice) && currentStarterPice != null)
                {
                    var adjacentOffsets = obtainAdjacentPoints(piecePosition);
                    foreach (var offset in adjacentOffsets)
                    {
                        if (!board.ContainsKey(offset) && cellDictionary.TryGetValue(offset, out Polygon cell) && !checkedPositions.Contains(offset))
                        {
                            List<Point> adjacentColliderPositions = obtaintAdjacentColliderPoints(offset, piecePosition);
                            bool isConnectedToColony = adjacentColliderPositions.Any(adj => board.ContainsKey(adj));
                            if (isConnectedToColony)
                            {
                                cell.Fill = Brushes.LightGreen;
                                cell.IsEnabled = true;
                                cell.MouseDown += Cell_MouseDown;
                                checkedPositions.Add(offset);
                            }
                        }
                    }
                }
            }
        }

        private void HighlightAvailableStartingCells()
        {
            ResetHighlights();
            var checkedPositions = new HashSet<Point>();

            foreach (var piecePosition in board.Keys)
            {
                if (board[piecePosition].playerName == UserProfileSingleton.username)
                {
                    var adjacentOffsets = obtainAdjacentPoints(piecePosition);

                    foreach (var offset in adjacentOffsets)
                    {
                        if (!board.ContainsKey(offset) && cellDictionary.TryGetValue(offset, out Polygon cell) && !checkedPositions.Contains(offset))
                        {
                            bool isConnectedToColony = obtainAdjacentPoints(offset).Any(adj => board.ContainsKey(adj) && board[adj].playerName == UserProfileSingleton.username);
                            bool isNearEnemy = obtainAdjacentPoints(offset).Any(adj => board.ContainsKey(adj) && board[adj].playerName != UserProfileSingleton.username);
                            if (isConnectedToColony && !isNearEnemy)
                            {
                                cell.Fill = Brushes.LightGreen;
                                cell.IsEnabled = true;
                                cell.MouseDown += Cell_MouseDown;
                                checkedPositions.Add(offset);
                            }
                        }
                    }
                }
            }
        }

        private List<Point> obtainAdjacentPoints(Point piecePosition)
        {
            List<Point> adjacentPoints = new List<Point>();
            if (piecePosition.X % 2 == 0)
            {
                adjacentPoints.Add(new Point(piecePosition.X - 1, piecePosition.Y - 1));
                adjacentPoints.Add(new Point(piecePosition.X, piecePosition.Y - 1));
                adjacentPoints.Add(new Point(piecePosition.X + 1, piecePosition.Y - 1));
                adjacentPoints.Add(new Point(piecePosition.X + 1, piecePosition.Y));
                adjacentPoints.Add(new Point(piecePosition.X, piecePosition.Y + 1));
                adjacentPoints.Add(new Point(piecePosition.X - 1, piecePosition.Y));
            }
            else
            {
                adjacentPoints.Add(new Point(piecePosition.X - 1, piecePosition.Y));
                adjacentPoints.Add(new Point(piecePosition.X, piecePosition.Y - 1));
                adjacentPoints.Add(new Point(piecePosition.X + 1, piecePosition.Y));
                adjacentPoints.Add(new Point(piecePosition.X + 1, piecePosition.Y + 1));
                adjacentPoints.Add(new Point(piecePosition.X, piecePosition.Y + 1));
                adjacentPoints.Add(new Point(piecePosition.X - 1, piecePosition.Y + 1));
            }
            return adjacentPoints;
        }

        private List<Point> obtaintAdjacentColliderPoints(Point offset, Point piecePosition)
        {
            List<Point> adjacentPoints = new List<Point>();
            if (piecePosition.X % 2 == 0)
            {
                adjacentPoints.Add(new Point(offset.X + 1, offset.Y + 1));
                adjacentPoints.Add(new Point(offset.X, offset.Y + 1));
                adjacentPoints.Add(new Point(offset.X - 1, offset.Y + 1));
                adjacentPoints.Add(new Point(offset.X - 1, offset.Y));
                adjacentPoints.Add(new Point(offset.X, offset.Y - 1));
                adjacentPoints.Add(new Point(offset.X + 1, offset.Y));
            }
            else
            {
                adjacentPoints.Add(new Point(offset.X + 1, offset.Y));
                adjacentPoints.Add(new Point(offset.X, offset.Y + 1));
                adjacentPoints.Add(new Point(offset.X - 1, offset.Y));
                adjacentPoints.Add(new Point(offset.X - 1, offset.Y - 1));
                adjacentPoints.Add(new Point(offset.X, offset.Y - 1));
                adjacentPoints.Add(new Point(offset.X + 1, offset.Y - 1));
            }
            return adjacentPoints;
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

        private void Cell_MouseDown(object sender, MouseButtonEventArgs e)
        {
            var hexagon = sender as Polygon;
            if (hexagon != null)
            {
                Point clickedCell = (Point)hexagon.Tag;

                if (board.ContainsKey(clickedCell))
                {
                    var piece = board[clickedCell]; // Obtén la pieza en la celda
                    if (selectedPiece != null)
                    {
                        // Si ya hay una pieza seleccionada, mueve la pieza seleccionada a la nueva celda
                        MovePieceToCell(selectedPiece, clickedCell);
                    }
                    else
                    {
                        // Si no hay ninguna pieza seleccionada, selecciona la pieza en la celda
                        SelectPiece(clickedCell);
                    }
                }else
                {
                        PlacePieceOnCell(hexagon);
                    
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
                    Tag = selectedPiece,
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
                    playerName = gamePiece.Piece.playerName
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
            foreach (var cell in cellDictionary)
            {
                cell.Value.IsEnabled = false;
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
            pieceObtained.playerName = piece.playerName;
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
                    EnablePiecesOnBoard();
                }
                else
                {
                    stckp_Player2.IsEnabled = true;
                    EnablePiecesOnBoard();
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
                    EnablePiecesOnBoard();
                }
                else
                {
                    stckp_Player2.IsEnabled = false;
                    EnablePiecesOnBoard();
                }
                DisablePiecesOnBoard();
            }
        }

        private void EnablePiecesOnBoard()
        {
            foreach (UIElement element in GameBoardGrid.Children)
            {
                if (element is Image image && image.Tag is Logic.GamePiece)
                {
                    image.IsEnabled = true;
                }
            }
        }

        private void DisablePiecesOnBoard()
        {
            foreach (UIElement element in GameBoardGrid.Children)
            {
                if (element is Image image && image.Tag is Logic.GamePiece)
                {
                    image.IsEnabled = false;
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
            }
            if (usersInGame.Count == 2)
            {
                usernamePlayer2 = usersInGame[1].username;
                if (IsPlayer2SlotAvailable(user))
                {
                    txtbl_PlayerName2.Text = user.username;
                    img_ProfilePic2.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                }
            }
            LoadPlayerPieces(stckp_Player1Pieces, player1Pieces, usernamePlayer1);
            LoadPlayerPieces(stckp_Player2Pieces, player2Pieces, usernamePlayer2);
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
