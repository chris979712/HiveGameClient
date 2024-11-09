using HiveGameWPFApp.Logic;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
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
    public partial class GameBoardView : Page
    {

        private bool isFirstPiecePlaced = false;
        private GamePiece selectedPiece; 
        private Polygon lastPlacedCell;
        private Dictionary<Point, Polygon> cellDictionary = new Dictionary<Point, Polygon>();
        private Dictionary<Point, Piece> board = new Dictionary<Point, Piece>();

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
            InitializeComponent();
            LoadPieces();
            InitializeBoard();
        }

       private void LoadPieces()
        {
            LoadPlayerPieces(Player1Pieces, player1Pieces);
            LoadPlayerPieces(Player2Pieces, player2Pieces);
        }


        private void LoadPlayerPieces(StackPanel playerPiecesPanel, List<GamePiece> pieces)
        {
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
                foreach (var child in Player1Pieces.Children.OfType<Image>())
                {
                    if (child.Tag?.ToString() == piece.Piece.Name)
                    {
                        Player1Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
            else if (player2Pieces.Contains(piece))
            {
                foreach (var child in Player2Pieces.Children.OfType<Image>())
                {
                    if (child.Tag?.ToString() == piece.Piece.Name)
                    {
                        Player2Pieces.Children.Remove(child);
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

    }
}
