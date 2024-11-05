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
                        Margin = new Thickness(0, -i * 25, 0, 0), // Apilar las imágenes
                        Tag = piece.Name // Puedes guardar el tipo de pieza en Tag
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
            int rows = 11; // Número de filas de hexágonos
            int columns = 11; // Número de columnas de hexágonos
            double hexagonSize = 23;  // Tamaño del lado del hexágono
            double xOffset = hexagonSize * Math.Sqrt(3);  // Distancia horizontal entre hexágonos
            double yOffset = hexagonSize * 1.5;  // Distancia vertical entre hexágonos

            GameBoardGrid.Children.Clear(); // Limpiar el tablero antes de dibujar

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

                    // Calcular la posición en el Canvas
                    double x = col * xOffset;
                    double y = row * yOffset;

                    // Desplazar columnas impares hacia la derecha para crear el patrón de colmena
                    if (row % 2 == 1)
                    {
                        x += xOffset / 2;
                    }

                    // Añadir el hexágono al Canvas en la posición calculada
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
                // Usamos un ángulo de 30 grados para que la orientación sea con la punta hacia arriba
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
                    if ((Point)cell.Tag == new Point(5, 5)) // Ejemplo para el centro
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

            // Obtener las coordenadas de la celda donde se colocó la pieza
            var position = (Point)lastPlacedCell.Tag;

            // Definir las coordenadas de las celdas adyacentes en el grid
            var adjacentOffsets = new List<Point>
            {
                new Point(position.X - 1, position.Y),     // Izquierda
                new Point(position.X + 1, position.Y),     // Derecha
                new Point(position.X, position.Y - 1),     // Arriba
                new Point(position.X, position.Y + 1),     // Abajo
                new Point(position.X - 1, position.Y + 1), // Arriba izquierda
                new Point(position.X + 1, position.Y - 1)  // Abajo derecha
            };

            // Resaltar las celdas adyacentes
            foreach (var offset in adjacentOffsets)
            {
                foreach (UIElement element in GameBoardGrid.Children)
                {
                    if (element is Polygon cell && (Point)cell.Tag == offset)
                    {
                        cell.Fill = Brushes.LightGreen; // Resaltar las celdas disponibles
                    }
                }
            }
        }

        private void Cell_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (selectedPieceImage != null && sender is Polygon cell)
            {
                // Verificar que la celda no contenga ya una pieza
                if (cell.Fill is ImageBrush)
                    return;

                // Crear una nueva imagen para la pieza y establecer su tamaño
                var pieceImage = new Image
                {
                    Source = selectedPieceImage.Source,
                    Width = 45,
                    Height = 45,
                };

                // Obtener las coordenadas exactas del hexágono en el Canvas
                double hexX = Canvas.GetLeft(cell);
                double hexY = Canvas.GetTop(cell);

                // Calcular el centro del hexágono basado en sus límites
                double hexCenterX = hexX + cell.ActualWidth / 2;
                double hexCenterY = hexY + cell.ActualHeight / 2;

                // Ajustar la posición de la imagen para que esté centrada
                double pieceX = hexCenterX - pieceImage.Width / 2;
                double pieceY = hexCenterY - pieceImage.Height / 2;

                // Establecer la posición de la pieza en el Canvas
                Canvas.SetLeft(pieceImage, pieceX);
                Canvas.SetTop(pieceImage, pieceY);

                // Añadir la pieza al Canvas
                GameBoardGrid.Children.Add(pieceImage);

                // Eliminar la pieza del jugador
                RemovePieceFromPlayer(selectedPieceImage);
                isFirstPiecePlaced = true;
                lastPlacedCell = cell; // Guarda la celda donde se colocó la pieza
                selectedPieceImage = null;

                // Restablecer y resaltar movimientos disponibles
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
