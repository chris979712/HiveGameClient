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
        private Image selectedPieceImage;
        private Polygon lastPlacedCell;
        public GameBoardView()
        {
            InitializeComponent();
            LoadPieces();
            InitializeBoard();
        }

        public class GamePiece
        {
            public string Name { get; set; }
            public string ImagePath { get; set; }
            public int Count { get; set; }

            public GamePiece(string name, string imagePath, int count)
            {
                Name = name;
                ImagePath = imagePath;
                Count = count;
            }
        }

        private List<GamePiece> player1Pieces = new List<GamePiece>
            {
                new GamePiece("Reina", "/Images/GamePieces/Queen_Player1.png", 1),
                new GamePiece("Araña", "/Images/GamePieces/Spider_Player1.png", 2),
                new GamePiece("Escarabajo", "/Images/GamePieces/Beetle_Player1.png", 2),
                new GamePiece("Hormiga", "/Images/GamePieces/Ant_Player1.png", 3),
                new GamePiece("Saltamontes", "/Images/GamePieces/Grasshopper_Player1.png", 3)
            };

        private List<GamePiece> player2Pieces = new List<GamePiece>
            {
                new GamePiece("Reina", "/Images/GamePieces/Queen_Player2.png", 1),
                new GamePiece("Araña", "/Images/GamePieces/Spider_Player2.png", 2),
                new GamePiece("Escarabajo", "/Images/GamePieces/Beetle_Player2.png", 2),
                new GamePiece("Hormiga", "/Images/GamePieces/Ant_Player2.png", 3),
                new GamePiece("Saltamontes", "/Images/GamePieces/Grasshopper_Player2.png", 3)
            };

        private void LoadPieces()
        {
            LoadPlayerPieces(Player1Pieces, player1Pieces);
            LoadPlayerPieces(Player2Pieces, player2Pieces);
        }


        private void LoadPlayerPieces(StackPanel playerPiecesPanel, List<GamePiece> pieces)
        {
            foreach (var piece in pieces)
            {
                for (int i = 0; i < piece.Count; i++)
                {
                    var image = new Image
                    {
                        Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                        Width = 50,
                        Height = 50,
                        Margin = new Thickness(0, -i * 25, 0, 0),
                        Tag = piece.Name
                    };
                    image.MouseDown += Piece_MouseDown;
                    playerPiecesPanel.Children.Add(image);
                }
            }
        }

        private void Piece_MouseDown(object sender, MouseButtonEventArgs e)
        {
            selectedPieceImage = sender as Image;

            if (!isFirstPiecePlaced)
            {
                HighlightCenterCell();
            }
            else
            {
                HighlightAvailableMoves(lastPlacedCell);
            }
        }

        private void InitializeBoard()
        {
            int rows = 11;
            int columns = 11; 
            double hexagonSize = 23; 
            double xOffset = hexagonSize * Math.Sqrt(3); 
            double yOffset = hexagonSize * 1.5;

            GameBoardGrid.Children.Clear(); 

            for (int row = 0; row < rows; row++)
            {
                for (int col = 0; col < columns; col++)
                {
                    var hexagon = new Polygon
                    {
                        Points = CreateHexagonPoints(hexagonSize),
                        Stroke = Brushes.Black,
                        Fill = Brushes.LightGray,
                        Tag = new Point(row, col)
                    };
                    hexagon.MouseDown += Cell_MouseDown;

                   
                    double x = col * xOffset;
                    double y = row * yOffset;

                   
                    if (row % 2 == 1)
                    {
                        x += xOffset / 2;
                    }

                    
                    Canvas.SetLeft(hexagon, x);
                    Canvas.SetTop(hexagon, y);
                    GameBoardGrid.Children.Add(hexagon);
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


        private void HighlightCenterCell()
        {
            foreach (UIElement element in GameBoardGrid.Children)
            {
                if (element is Polygon cell)
                {
                    if ((Point)cell.Tag == new Point(5, 5))
                    {
                        cell.Fill = Brushes.Yellow;
                        lastPlacedCell = cell;
                    }
                }
            }
        }

        private void HighlightAvailableMoves(Polygon lastPlacedCell)
        {
            if (lastPlacedCell == null) return;

           
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
                foreach (UIElement element in GameBoardGrid.Children)
                {
                    if (element is Polygon cell && (Point)cell.Tag == offset)
                    {
                        cell.Fill = Brushes.LightGreen; 
                    }
                }
            }
        }

        private void Cell_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (selectedPieceImage != null && sender is Polygon cell)
            {
                if (cell.Fill is ImageBrush)
                    return;


                var pieceImage = new Image
                {
                    Source = selectedPieceImage.Source,
                    Width = 45,
                    Height = 45,
                };

                
                double hexX = Canvas.GetLeft(cell);
                double hexY = Canvas.GetTop(cell);

                double hexCenterX = hexX + cell.ActualWidth / 2;
                double hexCenterY = hexY + cell.ActualHeight / 2;


                double pieceX = hexCenterX - pieceImage.Width / 2;
                double pieceY = hexCenterY - pieceImage.Height / 2;


                Canvas.SetLeft(pieceImage, pieceX);
                Canvas.SetTop(pieceImage, pieceY);


                GameBoardGrid.Children.Add(pieceImage);

                RemovePieceFromPlayer(selectedPieceImage);
                isFirstPiecePlaced = true;
                lastPlacedCell = cell;
                selectedPieceImage = null;

                ResetHighlights();
                HighlightAvailableMoves(lastPlacedCell);
            }
        }





        private void RemovePieceFromPlayer(Image piece)
        {
            if (Player1Pieces.Children.Contains(piece))
            {
                Player1Pieces.Children.Remove(piece);
            }
            else if (Player2Pieces.Children.Contains(piece))
            {
                Player2Pieces.Children.Remove(piece);
            }
        }

        private void ResetHighlights()
        {
            foreach (UIElement element in GameBoardGrid.Children)
            {
                if (element is Polygon cell)
                {
                    cell.Fill = Brushes.LightGray;
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
