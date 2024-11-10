using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
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
        private List<UserSession> usersInGame = new List<UserSession>();

        private List<GamePiece> player1Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player1.png", new Point(-1, -1)),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player1.png", new Point(-1, -1)),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1)),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1)),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1))
            };

        private List<GamePiece> player2Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player2.png", new Point(-1, -1)),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1)),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1)),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1)),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1))
            };

        public GameBoardView()
        {
            gameManagerClient = new GameManagerClient(new InstanceContext(this));
            InitializeComponent();
            LoadPieces();
            InitializeBoard();
            ConnectToGameBoard();
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

        private void LoadPieces()
        {
            LoadPlayerPieces(stckp_Player1Pieces, player1Pieces);
            LoadPlayerPieces(stckp_Player2pieces, player2Pieces);
        }


        private void LoadPlayerPieces(StackPanel playerPiecesPanel, List<GamePiece> pieces)
        {
            playerPiecesPanel.Children.Clear();
            foreach (var piece in pieces)
            {
                for (int i = 0; i < piece.Piece.Count; i++)
                {
                    var image = new Image
                    {
                        Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                        Width = 50,
                        Height = 50,
                        Margin = new Thickness(0, -i * 25, 0, 0),
                        Tag = piece.Piece.Name,
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
            if (sender is Image pieceImage && pieceImage.DataContext is GamePiece piece)
            {
                selectedPiece = piece;
                if (!isFirstPiecePlaced)
                {
                    PlacePieceOnCell(lastPlacedCell);
                    HighlightCell(new Point(6, 6));
                }
                else
                {
                    HighlightAvailableMoves(lastPlacedCell);
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
            if (lastPlacedCell == null || selectedPiece == null) return;

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
                if (isFirstPiecePlaced || selectedPiece.Piece.IsValidMove(selectedPiece.Position, targetPosition, board))
                {
                    PlacePieceOnCell(cell);
                }
            }
        }


        private void PlacePieceOnCell(Polygon cell)
        {
            if (cell == null) return;

            var pieceImage = new Image
                {
                    Source = new BitmapImage(new Uri(selectedPiece.ImagePath, UriKind.Relative)),
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

                selectedPiece.Position = (Point)cell.Tag;
                board[selectedPiece.Position] = selectedPiece.Piece;

                RemovePieceFromPlayer(selectedPiece);

                lastPlacedCell = cell;
                isFirstPiecePlaced = true;
                selectedPiece = null;

                ResetHighlights();
            
        }


        private void RemovePieceFromPlayer(GamePiece piece)
        {
            if (player1Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player1Pieces.Children.OfType<Image>())
                {
                    if (child.Tag?.ToString() == piece.Piece.Name)
                    {
                        stckp_Player1Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
            else if (player2Pieces.Contains(piece))
            {
                foreach (var child in stckp_Player2pieces.Children.OfType<Image>())
                {
                    if (child.Tag?.ToString() == piece.Piece.Name)
                    {
                        stckp_Player1Pieces.Children.Remove(child);
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
            GoToMainView();
        }

        private void GoToMainView()
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }

        public void ChargePlayerGameBoard(PlayerSide side)
        {
            if (side.playerOne)
            {
                DockPanel.SetDock(stckp_Player1,Dock.Bottom);
                DockPanel.SetDock(stckp_Player1Pieces, Dock.Bottom);
                img_ProfilePic1.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtbl_PlayerName1.Text = UserProfileSingleton.username;
                DockPanel.SetDock(stckp_Player2, Dock.Top);
                DockPanel.SetDock(stckp_Player2pieces, Dock.Top);
            }
            else if (side.playerTwo)
            {
                DockPanel.SetDock(stckp_Player2,Dock.Bottom);
                DockPanel.SetDock(stckp_Player2pieces, Dock.Bottom);
                DockPanel.SetDock(stckp_Player1,Dock.Top);
                DockPanel.SetDock(stckp_Player1Pieces, Dock.Top);
                img_ProfilePic2.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtbl_PlayerName2.Text = UserProfileSingleton.username;
            }
            LoadPieces();
            DockPanel dockPanel = (DockPanel)this.Content;
            dockPanel.UpdateLayout();
        }

        public void ReceivePieceMoved(GamePice piece)
        {
            throw new NotImplementedException();
        }

        public void ReceiveTurns(bool isTurn)
        {
            throw new NotImplementedException();
        }

        public void ReceivePlayers(UserSession[] usersInMatch)
        {
            usersInGame = usersInMatch.ToList(); 
            for(int indexUsersInMatch = 0;indexUsersInMatch< usersInGame.Count; indexUsersInMatch++)
            {
                UserSession user = usersInMatch[indexUsersInMatch];
                HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
                Profile profileUser = userManagerClient.GetUserProfileByUsername(user.username);
                if (profileUser.idAccesAccount == Constants.ERROR_OPERATION)
                {
                    profileUser.imagePath = "/Images/Avatars/Avatar1.png";
                }
                if (txtbl_PlayerName1.Text == Properties.Resources.txtbl_Player1 && txtbl_PlayerName2.Text == UserProfileSingleton.username)
                {
                    if(!user.username.Equals(txtbl_PlayerName2.Text))
                    {
                        txtbl_PlayerName1.Text = user.username;
                        img_ProfilePic1.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                    }
                }
                else if(txtbl_PlayerName2.Text == Properties.Resources.txtbl_Player2 && txtbl_PlayerName1.Text == UserProfileSingleton.username) 
                {
                    if (!user.username.Equals(txtbl_PlayerName1.Text))
                    {
                        txtbl_PlayerName2.Text = user.username;
                        img_ProfilePic2.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                    }
                }
            }
            LoadPieces();
        }
    }
}
