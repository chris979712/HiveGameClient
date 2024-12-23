﻿using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Common;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Linq;
using TimersTimer = System.Timers.Timer;


namespace HiveGameWPFApp.Views
{
    public partial class GameBoardView : Page, IGameManagerCallback
    {

        private GameManagerClient _gameManagerClient;
        private GamePiece _selectedPiece;
        private Polygon _lastPlacedCell;
        private Dictionary<Point, Polygon> _cellDictionary = new Dictionary<Point, Polygon>();
        private Dictionary<Point, Logic.GamePiece> _board = new Dictionary<Point, Logic.GamePiece>();
        private List<UserSession> _usersInGame;
        private TimersTimer _turnTimeoutTimer;
        private bool _hasOtherPlayerMoved = false;  
        private bool _isOtherPlayerTurn = false;
        private int _numberOfPlayer = 0;
        private int _numberOfTurn = 0;
        private string _winnerName = "";
        private string _usernamePlayer1 = "";
        private string _usernamePlayer2 = "";
        private bool _isFirstPiecePlaced = false;
        private bool _isBeetleMoved = false;
        private bool _isQueenInGame = false;
        private bool _IsMatchFinished = false;
        private static readonly List<(double dirUp, double dirDown)> _hexPairDirecctions = new List<(double, double)> { (0, -1), (1, -1), (1, 0), (0, 1), (-1, 0), (-1, -1) };
        private static readonly List<(double dirUp, double dirDown)> _hexOddDirecctions = new List<(double, double)> { (0, -1), (1, 0), (1, 1), (0, 1), (-1, 1), (-1, 0) };
        private const string _Player1Id = "player1";
        private const string _Player2Id = "player2";
        private const string _QueenPieceName = "Queen";
        public const string BeetlePieceName = "Beetle";
        private static readonly Dictionary<(int, string), Image> _piecesCapturedByTheBeetle = new Dictionary<(int, string), Image>();

        private List<GamePiece> _player1Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player1.png", new Point(-1, -1),_Player1Id,1),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player1.png", new Point(-1, -1),_Player1Id,2),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player1.png", new Point(-1, -1),_Player1Id,3),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1),_Player1Id,4),
                new GamePiece(new Beetle (), "/Images/GamePieces/Beetle_Player1.png", new Point(-1, -1),_Player1Id,5),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), _Player1Id,6),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), _Player1Id,7),
                new GamePiece(new Ant  (), "/Images/GamePieces/Ant_Player1.png", new Point(-1, -1), _Player1Id,8),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),_Player1Id,9),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),_Player1Id,10),
                new GamePiece(new Grasshopper  (), "/Images/GamePieces/Grasshopper_Player1.png", new Point(-1, -1),_Player1Id,11)
            };
        private List<GamePiece> _player2Pieces = new List<GamePiece>
            {
                new GamePiece(new Queen(), "/Images/GamePieces/Queen_Player2.png", new Point(-1, -1),_Player2Id,1),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1),_Player2Id,2),
                new GamePiece(new Spider(), "/Images/GamePieces/Spider_Player2.png", new Point(-1, -1),_Player2Id,3),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1),_Player2Id,4),
                new GamePiece(new Beetle(), "/Images/GamePieces/Beetle_Player2.png", new Point(-1, -1),_Player2Id,5),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), _Player2Id,6),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), _Player2Id,7),
                new GamePiece(new Ant(), "/Images/GamePieces/Ant_Player2.png", new Point(-1, -1), _Player2Id,8),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1), _Player2Id,9),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1),_Player2Id,10),
                new GamePiece(new Grasshopper (), "/Images/GamePieces/Grasshopper_Player2.png", new Point(-1, -1), _Player2Id,11)
            };

        public GameBoardView()
        {
            _gameManagerClient = new GameManagerClient(new InstanceContext(this));
            InitializeComponent();
            if (App.IsMusicPlaying)
            {
                App.PlayMusic("Audio/Game.mp3");
            }
            InitializeBoard();
            ConnectToGameBoard();
            Constants.IsInMatch = true;
            _numberOfTurn = 0;
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
                _gameManagerClient.ConnectToGameBoard(userSession, userSession.codeMatch);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void LoadPlayerPieces(StackPanel playerPiecesPanel, List<GamePiece> pieces, string username)
        {
            for (int indexPieces = 0; indexPieces < pieces.Count; indexPieces++)
            {
                pieces[indexPieces].PlayerName = username;
                pieces[indexPieces].Piece.PlayerName = username;
            }
            playerPiecesPanel.Children.Clear();
            for (int i = 0; i < pieces.Count; i++)
            {
                var piece = pieces[i];
                piece.PlayerName = username;
                piece.Piece.PlayerName = username;
                var image = new Image
                {
                    Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                    Width = 50,
                    Height = 50,
                    Margin = new Thickness(0, 0 * 25, 0, 0),
                    Tag = piece,
                    DataContext = piece
                };
                playerPiecesPanel.Children.Add(image);
                image.MouseDown += Piece_MouseDown;
            }
        }

        private void InitializeBoard()
        {
            int rows = 13;
            int columns = 13;
            double hexagonSize = 26;
            double xOffset = hexagonSize * Math.Sqrt(3);
            double yOffset = hexagonSize * 1.5;
            canva_GameBoardGrid.Children.Clear();
            _cellDictionary.Clear();
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
                    double x = col * xOffset;
                    double y = row * yOffset;
                    if (row % 2 == 1) x += xOffset / 2;
                    Canvas.SetLeft(hexagon, x);
                    Canvas.SetTop(hexagon, y);
                    canva_GameBoardGrid.Children.Add(hexagon);
                    _cellDictionary[new Point(row, col)] = hexagon;
                }
            }
        }

        private void Cell_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (_selectedPiece != null && sender is Polygon cell && cell != null)
            {
                PlacePieceOnCell(cell);
            }
            e.Handled = true;
        }

        private void PieceSelected_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is Image imagePiece)
            {
                GamePiece piece = (GamePiece)imagePiece.Tag;
                if (_isBeetleMoved)
                {
                    List<Point> adjacentPoints = ObtainAdjacentPoints(piece.Position);
                    if (adjacentPoints.Contains(_selectedPiece.Position))
                    {
                        PieceSelectedByBeetle(imagePiece, _selectedPiece);
                    }
                }
                else
                {
                    if (ValidateQueenPieceIsInGame())
                    {
                        PieceOnBoardSelected(piece);
                    }
                    else
                    {
                        ShowInfoMessage(Properties.Resources.dialogFourFirstTurn);
                    }
                }
            }
            e.Handled = true;
        }

        private void Piece_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is Image pieceImage && pieceImage.DataContext is GamePiece piece && piece.PlayerName == UserProfileSingleton.username)
            {
                if (_numberOfTurn == 4 && !ValidateQueenPieceIsInGame() && piece.Piece.Name != _QueenPieceName && !_isQueenInGame)
                {
                    HandleQueenNotInPlay();
                }
                else
                {
                    HandlePieceSelection(piece);
                }
            }
            e.Handled = true;
        }

        private void HandleQueenNotInPlay()
        {
            ShowInfoMessage(Properties.Resources.dialogQueenIsNotInPlay);
            HighlightAvailableStartingCells();
        }

        private void HandlePieceSelection(GamePiece piece)
        {
            _selectedPiece = piece;
            if (!_isFirstPiecePlaced)
            {
                HandleFirstPiecePlacement();
            }
            else
            {
                HandleSubsequentPiecePlacement(piece);
            }
        }

        private void HandleFirstPiecePlacement()
        {
            Point centerPosition = new Point(6, 6);
            if (_cellDictionary.TryGetValue(centerPosition, out Polygon centerCell) && !_board.ContainsKey(centerPosition))
            {
                HighlightStartingFirstTurnStaterCell(centerPosition);
                PlacePieceOnCell(_lastPlacedCell);
            }
            else
            {
                HigligthStartingFirstTurnOponentCell();
            }
        }

        private void HandleSubsequentPiecePlacement(GamePiece piece)
        {
            Point staterMove = new Point(-1, -1);
            if (piece.Position == staterMove)
            {
                HighlightAvailableStartingCells();
            }
        }

        private bool ValidateQueenPieceIsInGame()
        {
            var piecesCaptured = _piecesCapturedByTheBeetle.Select(entry => entry.Value.Tag as GamePiece).ToList();
            bool queenOnBoard = _board.Values.Any(piece =>
                piece != null &&
                piece.Piece.Name.Equals(_QueenPieceName) &&
                piece.Piece.PlayerName == UserProfileSingleton.username
            );
            bool queenCaptured = piecesCaptured.Exists(pieceCaptured =>
                pieceCaptured != null &&
                pieceCaptured.PlayerName == UserProfileSingleton.username &&
                pieceCaptured.Piece.Name == _QueenPieceName
            );
            _isQueenInGame = queenOnBoard || queenCaptured;
            return _isQueenInGame;
        }

        private void PieceOnBoardSelected(GamePiece piece)
        {
            string typeOfPiece = piece.Piece.Name;
            if (ValidateThatPieceCannotBreakTheHive(piece.Position))
            {
                switch (typeOfPiece)
                {
                    case _QueenPieceName:
                        MoveQueen(piece);
                        break;
                    case "Spider":
                        MoveSpider(piece);
                        break;
                    case "Ant":
                        MoveAnt(piece);
                        break;
                    case "Grasshopper":
                        MoveGrasshopper(piece);
                        break;
                    case BeetlePieceName:
                        MoveBeetle(piece);
                        break;
                    default:
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntObtainPieceName);
                        break;
                }
            }
            else
            {
                ShowInfoMessage(Properties.Resources.dialogBrokeHiveAlert);
            }

        }

        public void ShowInfoMessage(string message)
        {
            txtb_InfoMessage.Text = message;
            txtb_InfoMessage.Visibility = Visibility.Visible;
            Storyboard infoAnimation = (Storyboard)FindResource("storyb_InfoMessageAnimation");
            infoAnimation.Completed += (s, e) =>
            {
                txtb_InfoMessage.Visibility = Visibility.Collapsed;
            };
            infoAnimation.Begin();
        }

        private void MoveQueen(GamePiece piece)
        {
            ResetHighlights();
            _selectedPiece = piece;
            var checkedPositions = new HashSet<Point>();
            Point queenPosition = piece.Position;
            var queenPiece = _board[queenPosition];
            _board.Remove(queenPosition);
            var adjacentPoints = ObtainAdjacentPoints(piece.Position);
            foreach (var offset in adjacentPoints)
            {
                if (!_board.ContainsKey(offset) &&
                    _cellDictionary.TryGetValue(offset, out Polygon cell) &&
                    !checkedPositions.Contains(offset) &&
                    IsConnectedToHive(offset) &&
                    IsNotSurrounded(offset))
                {
                    cell.Fill = Brushes.Green;
                    cell.IsEnabled = true;
                    cell.MouseDown += PlacePieceThatIsInGame_MouseDown;
                    checkedPositions.Add(offset);
                }
            }
            _board.Add(queenPosition, queenPiece);
        }

        private void MoveSpider(GamePiece piece)
        {
            ResetHighlights();
            _selectedPiece = piece;
            _board.Remove(piece.Position);
            List<Point> adjacentToCurrent = ObtainAdjacentPoints(piece.Position);
            List<Point> posibleMoves = ObtainSpiderMoves(piece.Position)
                .Where(pos => !adjacentToCurrent.Contains(pos))
                .ToList();
            foreach (var posiblePosition in posibleMoves)
            {
                if (_cellDictionary.TryGetValue(posiblePosition, out Polygon cell))
                {
                    cell.Fill = Brushes.Green;
                    cell.IsEnabled = true;
                    cell.MouseDown += PlacePieceThatIsInGame_MouseDown;
                }
            }
            _board.Add(piece.Position, piece);
        }

        private void MoveBeetle(GamePiece piece)
        {
            ResetHighlights();
            _selectedPiece = piece;
            _board.Remove(piece.Position);
            bool isOnAnotherPiece = _piecesCapturedByTheBeetle.Any(gamePiece => gamePiece.Key == (piece.PieceNumber, piece.PlayerName));
            List<Point> possibleMoves = ObtainBeetleMoves(piece.Position, isOnAnotherPiece);
            foreach (var possiblePosition in possibleMoves)
            {
                if (_cellDictionary.TryGetValue(possiblePosition, out Polygon cell) && !_board.ContainsKey(possiblePosition))
                {
                    cell.Fill = Brushes.Green;
                    cell.IsEnabled = true;
                    cell.MouseDown += PlacePieceThatIsInGame_MouseDown;
                }
                else if (_board.ContainsKey(possiblePosition))
                {
                    List<Image> imagesOnBoard = canva_GameBoardGrid.Children.OfType<Image>().ToList();
                    foreach (Image imageOnBoard in imagesOnBoard)
                    {
                        GamePiece gamePiece = (GamePiece)imageOnBoard.Tag;
                        if (gamePiece.Position == possiblePosition && gamePiece.PlayerName != UserProfileSingleton.username)
                        {
                            cell.Fill = Brushes.Green;
                            imageOnBoard.IsEnabled = true;
                            imageOnBoard.MouseDown += PieceSelected_MouseDown;
                        }
                        else if (gamePiece.Position == possiblePosition && gamePiece.PlayerName == UserProfileSingleton.username)
                        {
                            cell.Fill = Brushes.Green;
                        }
                    }
                    _isBeetleMoved = true;
                }
            }
            _board.Add(piece.Position, piece);
        }

        private void MoveAnt(GamePiece piece)
        {
            ResetHighlights();
            _selectedPiece = piece;
            _board.Remove(piece.Position);
            List<Point> possibleMoves = ObtainAntMoves(piece.Position);
            foreach (var possiblePosition in possibleMoves)
            {
                if (_cellDictionary.TryGetValue(possiblePosition, out Polygon cell))
                {
                    cell.Fill = Brushes.Green;
                    cell.IsEnabled = true;
                    cell.MouseDown += PlacePieceThatIsInGame_MouseDown;
                }
            }
            _board.Add(piece.Position, piece);
        }

        private void MoveGrasshopper(GamePiece piece)
        {
            ResetHighlights();
            _selectedPiece = piece;
            _board.Remove(piece.Position);
            List<Point> possibleMoves = ObtainGrassHopperMoves(piece.Position);
            foreach (var possiblePosition in possibleMoves)
            {
                if (_cellDictionary.TryGetValue(possiblePosition, out Polygon cell))
                {
                    cell.Fill = Brushes.Green;
                    cell.IsEnabled = true;
                    cell.MouseDown += PlacePieceThatIsInGame_MouseDown;
                }
            }
            _board.Add(piece.Position, piece);
        }

        private List<Point> ObtainSpiderMoves(Point start)
        {
            var validMoves = new List<Point>();
            var visitedPoints = new HashSet<Point> { start };
            var queue = InitializeQueue(start);
            while (queue.Count > 0)
            {
                var (currentPosition, previousPosition, currentSteps) = queue.Dequeue();

                if (currentSteps < 3)
                {
                    EnqueueAdjacentPoints(queue, visitedPoints, currentPosition, currentSteps);
                }
                else if (currentSteps == 3 && IsConnectedToHive(currentPosition))
                {
                    validMoves.Add(currentPosition);
                }
            }
            return validMoves;
        }

        private Queue<(Point position, Point previousPosition, int steps)> InitializeQueue(Point start)
        {
            var queue = new Queue<(Point position, Point previousPosition, int steps)>();
            queue.Enqueue((start, start, 0));
            return queue;
        }

        private void EnqueueAdjacentPoints(
                Queue<(Point position, Point previousPosition, int steps)> queue,
                HashSet<Point> visitedPoints,
                Point currentPosition,
                int currentSteps)
        {
                var adjacentPoints = ObtainAdjacentPoints(currentPosition);
                foreach (var adjacent in adjacentPoints.Where(adj => IsValidMove(adj, visitedPoints, currentPosition)))
                {
                    visitedPoints.Add(adjacent);
                    queue.Enqueue((adjacent, currentPosition, currentSteps + 1));
                }
        }

        private bool IsValidMove(Point adjacent, HashSet<Point> visitedPoints, Point currentPosition)
        {
            return !visitedPoints.Contains(adjacent) &&
                   !_board.ContainsKey(adjacent) &&
                   IsContinouslyConnected(adjacent, currentPosition, currentPosition);
        }

        private List<Point> ObtainBeetleMoves(Point piecePosition, bool isOnAnotherPiece)
        {
            List<Point> adjacentMoves = ObtainAdjacentPoints(piecePosition);
            List<Point> possibleMoves = new List<Point>();
            if (isOnAnotherPiece)
            {
                _board.Add(_selectedPiece.Position, _selectedPiece);
                possibleMoves.AddRange(adjacentMoves.Where(adj => IsConnectedToHive(adj)));
                _board.Remove(_selectedPiece.Position);
            }
            else
            {
                possibleMoves.AddRange(adjacentMoves.Where(adj => IsConnectedToHiveBeetle(adj)));
            }
            return possibleMoves;
        }

        private List<Point> ObtainAntMoves(Point piecePoint)
        {
            List<Point> possibleMoves = new List<Point>();
            HashSet<Point> visitedPoint = new HashSet<Point>();
            Queue<Point> queue = new Queue<Point>();
            queue.Enqueue(piecePoint);
            visitedPoint.Add(piecePoint);
            while (queue.Count > 0)
            {
                var currentPosition = queue.Dequeue();
                var adjacentPoints = ObtainAdjacentPoints(currentPosition);
                foreach (var adjacent in adjacentPoints)
                {
                    if (!visitedPoint.Contains(adjacent) &&
                        !_board.ContainsKey(adjacent) &&
                        IsConnectedToHive(adjacent) &&
                        IsNotSurrounded(adjacent))
                    {
                        possibleMoves.Add(adjacent);
                        visitedPoint.Add(adjacent);
                        queue.Enqueue(adjacent);
                    }
                }
            }
            return possibleMoves;
        }

        private List<Point> ObtainGrassHopperMoves(Point start)
        {
            List<Point> validMoves = new List<Point>();
            var directions = ObtainAdjacentPoints(start);
            foreach (var direction in directions.Where(direction => _board.ContainsKey(direction)))
            {
                Point currentPosition = MoveInSameDirection(direction, start);
                Point nextPosition = MoveInSameDirection(currentPosition, direction);
                bool notFoundPiece = false;
                while (!notFoundPiece)
                {
                    if (_board.ContainsKey(currentPosition))
                    {
                        Point currentPositionAuxiliar = nextPosition;
                        nextPosition = MoveInSameDirection(currentPosition, nextPosition);
                        currentPosition = currentPositionAuxiliar;
                    }
                    else if (!_board.ContainsKey(currentPosition) && IsConnectedToHive(currentPosition))
                    {
                        validMoves.Add(currentPosition);
                        notFoundPiece = true;
                    }
                }
            }

            return validMoves;
        }

        private Point MoveInSameDirection(Point current, Point start)
        {
            Point pointToMove = new Point(0, 0);
            double dq = current.X - start.X;
            double dr = current.Y - start.Y;
            double epsilon = 0.0001;
            if (Math.Abs(start.X % 2 - 0) < epsilon)
            {
                int index = _hexPairDirecctions.FindIndex(dir => dir.dirUp == dq && dir.dirDown == dr);
                if (index != -1)
                {
                    (double dirU, double dirD) = _hexOddDirecctions[index];
                    pointToMove = new Point(current.X + dirU, current.Y + dirD);
                }
            }
            else
            {
                int index = _hexOddDirecctions.FindIndex(dir => dir.dirUp == dq && dir.dirDown == dr);
                if (index != -1)
                {
                    (double dirU, double dirD) = _hexPairDirecctions[index];
                    pointToMove = new Point(current.X + dirU, current.Y + dirD);
                }
            }
            return pointToMove;
        }

        private string GetIfItsFinalMatchResults()
        {
            string winnerResult = "NoBody";
            GamePiece queenPlayerOne = ObtainQueenOfPlayers(_usernamePlayer1);
            GamePiece queenPlayerTwo = ObtainQueenOfPlayers(_usernamePlayer2);
            if (queenPlayerOne == null)
            {
                queenPlayerOne = ObtainQueenOfPlayersCapturedByABeetle(_usernamePlayer1);
            }
            if (queenPlayerTwo == null)
            {
                queenPlayerTwo = ObtainQueenOfPlayersCapturedByABeetle(_usernamePlayer2);
            }
            if (queenPlayerOne != null && queenPlayerTwo != null)
            {
                if (IsSourrounded(queenPlayerOne.Position) && IsSourrounded(queenPlayerTwo.Position))
                {
                    winnerResult = "Draw";
                }
                else if (IsSourrounded(queenPlayerOne.Position))
                {
                    winnerResult = _usernamePlayer2;
                }
                else if (IsSourrounded(queenPlayerTwo.Position))
                {
                    winnerResult = _usernamePlayer1;
                }
            }
            return winnerResult;
        }

        private bool IsSourrounded(Point positionPiece)
        {
            List<Point> adjacentPoints = ObtainAdjacentPoints(positionPiece);
            int numberOfColliderPointsExisted = adjacentPoints.Count(point => _board.ContainsKey(point));
            return numberOfColliderPointsExisted == 6;
        }

        private GamePiece ObtainQueenOfPlayers(string usernameOfPlayer)
        {
            return _board.Values.FirstOrDefault(piece => piece.PlayerName == usernameOfPlayer && piece.PieceNumber == 1);
        }

        private GamePiece ObtainQueenOfPlayersCapturedByABeetle(string usernameOfPlayer)
        {
            return _piecesCapturedByTheBeetle.Values.Select(image => image.Tag as GamePiece).FirstOrDefault(gamePiece => gamePiece != null && gamePiece.PieceNumber == 1 && gamePiece.PlayerName == usernameOfPlayer);
        }

        private void PlacePieceThatIsInGame_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (_selectedPiece != null && sender is Polygon cell && cell != null)
            {
                bool verifyThereIsConnection = VerifyConnectivityBeforeSendingPiece();
                if (verifyThereIsConnection)
                {
                    Point oldPosition = _selectedPiece.Position;
                    Image imageOfPiece = ObtainImageCreation(cell, _selectedPiece);
                    _selectedPiece.Position = (Point)cell.Tag;
                    _selectedPiece.Piece.Position = oldPosition;
                    if (_piecesCapturedByTheBeetle.ContainsKey((_selectedPiece.PieceNumber, _selectedPiece.PlayerName)))
                    {
                        Image pieceContainedByTheBeetle = _piecesCapturedByTheBeetle[(_selectedPiece.PieceNumber, _selectedPiece.PlayerName)];
                        UpdateOldAndNewPlaceInGameBoard(imageOfPiece, oldPosition);
                        ReturnOriginalPositionOfPieceCapturedByTheBeetle(pieceContainedByTheBeetle, _selectedPiece);
                    }
                    else
                    {
                        UpdateOldAndNewPlaceInGameBoard(imageOfPiece, oldPosition);
                    }
                    EliminateDuplicatedImagesIfExists(oldPosition);
                   
                    SendPiecePositionToServer(_selectedPiece);
                    _winnerName = GetIfItsFinalMatchResults();
                    if (_winnerName != "NoBody")
                    {
                        SendFinishOfMatchNotification(_winnerName);
                    }
                    _lastPlacedCell = cell;
                    _selectedPiece = null;
                    ResetHighlights();
                }
            }
            _isBeetleMoved = false;
            e.Handled = true;
        }

        private bool VerifyConnectivityBeforeSendingPiece()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            bool connectionVerification = false;
            try
            {
                connectionVerification = _gameManagerClient.CheckPersonalConnection();
            }
            catch(TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                NotifyDisconnection();
            }
            return connectionVerification;
        }

        private void SendFinishOfMatchNotification(string result)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                _gameManagerClient.FinishOfTheMatch(MatchSingleton.codeMatch, result);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void EliminateDuplicatedImagesIfExists(Point oldPosition)
        {
            if (!_board.ContainsKey(oldPosition))
            {
                var imagesToRemove = canva_GameBoardGrid.Children
                    .OfType<Image>()
                    .Where(image =>
                        image.Tag is GamePiece piece && piece.Position == oldPosition)
                    .ToList();
                for (int indexOfImage = 0; indexOfImage < imagesToRemove.Count; indexOfImage++)
                {
                    Image imageToQuit = imagesToRemove[indexOfImage];
                    List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                    int indexToRemove = childrenGrids.IndexOf(imageToQuit);
                    if (indexToRemove != -1)
                    {
                        canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
                    }
                }
            }
        }

        private Image ObtainImageCreation(Polygon cell, GamePiece piece)
        {
            Image pieceImage = new Image
            {
                Source = new BitmapImage(new Uri(piece.ImagePath, UriKind.Relative)),
                Width = 48,
                Height = 48,
                Tag = piece,
            };
            double hexX = Canvas.GetLeft(cell);
            double hexY = Canvas.GetTop(cell);
            double pieceX = hexX + (cell.ActualWidth - pieceImage.Width) / 1;
            double pieceY = hexY + (cell.ActualHeight - pieceImage.Height) / 1;
            Canvas.SetLeft(pieceImage, pieceX);
            Canvas.SetTop(pieceImage, pieceY);
            return pieceImage;
        }

        private void ReturnOriginalPositionOfPieceCapturedByTheBeetle(Image pieceCapturedByTheBeetle, GamePiece beetlePiece)
        {
            GamePiece pieceToReturn = pieceCapturedByTheBeetle.Tag as GamePiece;
            if (canva_GameBoardGrid.Children.Contains(pieceCapturedByTheBeetle))
            {
                List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemove = childrenGrids.IndexOf(pieceCapturedByTheBeetle);
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }
            canva_GameBoardGrid.Children.Add(pieceCapturedByTheBeetle);
            _piecesCapturedByTheBeetle.Remove((beetlePiece.PieceNumber, beetlePiece.PlayerName));
            if (_board.ContainsKey(pieceToReturn.Position))
            {
                _board.Remove(pieceToReturn.Position);
            }
            _board.Add(pieceToReturn.Position, pieceToReturn);
        }

        private void PieceSelectedByBeetle(Image imagePiece, GamePiece beetlePiece)
        {
            GamePiece pieceToKeepSafe = imagePiece.Tag as GamePiece;
            List<Image> imagesOfPieces = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            Image imageWhereBeetleIs = new Image();
            foreach (var imageOnBeetle in imagesOfPieces)
            {
                GamePiece piece = imageOnBeetle.Tag as GamePiece;
                if (piece.PieceNumber == beetlePiece.PieceNumber && piece.PlayerName == beetlePiece.PlayerName)
                {
                    imageWhereBeetleIs = imageOnBeetle;
                    break;
                }
            }
            if (_piecesCapturedByTheBeetle.ContainsKey((beetlePiece.PieceNumber, beetlePiece.PlayerName)))
            {
                RestoreOriginalPieceCapturedByTheBeetle(imageWhereBeetleIs, beetlePiece);
            }
            else
            {
                PieceToReplaceByTheBeetle(beetlePiece, pieceToKeepSafe, imageWhereBeetleIs);
            }
            _piecesCapturedByTheBeetle.Add((beetlePiece.PieceNumber, beetlePiece.PlayerName), imagePiece);
            Point oldPosition = beetlePiece.Position;
            Polygon cell = _cellDictionary[pieceToKeepSafe.Position];
            beetlePiece.Position = pieceToKeepSafe.Position;
            beetlePiece.Piece.Position = oldPosition;
            UpdateGameboardGridByBeetle(cell, beetlePiece);
            _isBeetleMoved = false;
        }

        private void PieceToReplaceByTheBeetle(GamePiece beetlePiece, GamePiece pieceToKeepSafe, Image imageWhereBeetleIs)
        {
            List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
            int indexToRemove = childrenGrids.IndexOf(imageWhereBeetleIs);
            if (indexToRemove != -1)
            {
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }
            _board.Remove(pieceToKeepSafe.Position);
            if (_board.ContainsKey(beetlePiece.Position) && _board[beetlePiece.Position] == beetlePiece)
            {
                _board.Remove(beetlePiece.Position);
            }
        }

        private void RestoreOriginalPieceCapturedByTheBeetle(Image imageWhereBeetleIs, GamePiece beetlePiece)
        {
            Image originalPieceImage = _piecesCapturedByTheBeetle[(beetlePiece.PieceNumber, beetlePiece.PlayerName)];
            GamePiece originalPiece = originalPieceImage.Tag as GamePiece;
            _board.Remove(originalPiece.Position);
            _board.Add(originalPiece.Position, originalPiece);
            if (canva_GameBoardGrid.Children.Contains(imageWhereBeetleIs))
            {
                List<UIElement> childrenGrid = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemoveBeetle = childrenGrid.IndexOf(imageWhereBeetleIs);
                canva_GameBoardGrid.Children.RemoveAt(indexToRemoveBeetle);
            }
            if (canva_GameBoardGrid.Children.Contains(originalPieceImage))
            {
                List<UIElement> childrenGridNewPiece = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemoveNewPiece = childrenGridNewPiece.IndexOf(originalPieceImage);
                canva_GameBoardGrid.Children.RemoveAt(indexToRemoveNewPiece);
            }
            canva_GameBoardGrid.Children.Add(originalPieceImage);
            _piecesCapturedByTheBeetle.Remove((beetlePiece.PieceNumber, beetlePiece.PlayerName));
        }

        private void UpdateGameboardGridByBeetle(Polygon cell, GamePiece piece)
        {
            Image pieceImage = ObtainImageCreation(cell, piece);
            canva_GameBoardGrid.Children.Add(pieceImage);
            _board[piece.Position] = piece;
            SendPiecePositionToServer(piece);
            _lastPlacedCell = cell;
            _selectedPiece = null;
            ResetHighlights();
        }

        private void UpdateOldAndNewPlaceInGameBoard(Image pieceImage, Point oldPosition)
        {
            if (_board.ContainsKey(oldPosition))
            {
                _board.Remove(oldPosition);
            }
            var imagesOnGameBoardGrid = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            GamePiece pieceToMove = pieceImage.Tag as GamePiece;
            Image imageToRemove = new Image();
            foreach (var imageOnGrid in imagesOnGameBoardGrid)
            {
                GamePiece piece = imageOnGrid.Tag as GamePiece;
                if (piece.Piece.Position == oldPosition && piece.PieceNumber == pieceToMove.PieceNumber && piece.PlayerName == pieceToMove.PlayerName)
                {
                    imageToRemove = imageOnGrid;
                    break;
                }
            }
            List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
            int indexToRemove = childrenGrids.IndexOf(imageToRemove);
            if(indexToRemove != -1) { 
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }
            canva_GameBoardGrid.Children.Add(pieceImage);
            GamePiece pieceToAdd = pieceImage.Tag as GamePiece;
            _board[pieceToAdd.Position] = pieceToAdd;
        }

        private bool ValidateThatPieceCannotBreakTheHive(Point positionPiece)
        {
            bool validationResult = false;
            GamePiece verifyIfPieceIsNotABeetle = _board[positionPiece];
            if (_piecesCapturedByTheBeetle.ContainsKey((verifyIfPieceIsNotABeetle.PieceNumber, verifyIfPieceIsNotABeetle.PlayerName)))
            {
                validationResult = true;
            }
            else
            {
                if (positionPiece != new Point(-1, -1))
                {
                    var piece = _board[positionPiece];
                    _board.Remove(positionPiece);
                    Point start = _board.Keys.FirstOrDefault();
                    HashSet<Point> visited = new HashSet<Point>();
                    CheckConnectedPieces(start, visited);
                    if (visited.Count == _board.Count)
                    {
                        validationResult = true;
                    }
                    else
                    {
                        validationResult = false;
                    }
                    _board.Add(positionPiece, piece);
                }
            }
            return validationResult;
        }

        private void CheckConnectedPieces(Point start, HashSet<Point> visited)
        {
            Stack<Point> stack = new Stack<Point>();
            stack.Push(start);
            while (stack.Count > 0)
            {
                Point currentPoint = stack.Pop();
                if (!visited.Contains(currentPoint))
                {
                    visited.Add(currentPoint);
                    List<Point> adjacentPoints = ObtainAdjacentPoints(currentPoint);
                    foreach (var adjacentCollider in adjacentPoints)
                    {
                        if (!visited.Contains(adjacentCollider) && _board.ContainsKey(adjacentCollider))
                        {
                            stack.Push(adjacentCollider);
                        }
                    }
                }
            }
        }

        private void HighlightStartingFirstTurnStaterCell(Point position)
        {
            if (_cellDictionary.TryGetValue(position, out Polygon cell))
            {
                cell.Fill = Brushes.Yellow;
                _lastPlacedCell = cell;
                cell.MouseDown += Cell_MouseDown;
            }
        }

        private void HigligthStartingFirstTurnOponentCell()
        {
            ResetHighlights();
            var checkedPositions = new HashSet<Point>();
            foreach (var piecePosition in _board.Keys)
            {
                if (_board.TryGetValue(piecePosition, out var currentStarterPiece) && currentStarterPiece != null)
                {
                    HighlightValidOffsets(piecePosition, checkedPositions);
                }
            }
        }

        private void HighlightValidOffsets(Point piecePosition, HashSet<Point> checkedPositions)
        {
            foreach (var offset in ObtainAdjacentPoints(piecePosition))
            {
                if (!_board.ContainsKey(offset) &&
                    _cellDictionary.TryGetValue(offset, out var cell) &&
                    !checkedPositions.Contains(offset) &&
                    ObtaintAdjacentColliderPoints(offset, piecePosition).Exists(adj => _board.ContainsKey(adj)))
                {
                    cell.Fill = Brushes.LightGreen;
                    cell.IsEnabled = true;
                    cell.MouseDown += Cell_MouseDown;
                    checkedPositions.Add(offset);
                }
            }
        }

        private void HighlightAvailableStartingCells()
        {
            ResetHighlights();
            var checkedPositions = new HashSet<Point>();
            if (_numberOfTurn == 4 && !ValidateQueenPieceIsInGame())
            {
                _selectedPiece = _numberOfPlayer == 1 ? _player1Pieces[0] : _player2Pieces[0];
            }
            foreach (var piecePosition in _board.Keys)
            {
                if (_board[piecePosition].PlayerName == UserProfileSingleton.username)
                {
                    HighlightValidCellsForPiece(piecePosition, checkedPositions);
                }
            }
        }

        private void HighlightValidCellsForPiece(Point piecePosition, HashSet<Point> checkedPositions)
        {
            foreach (var offset in ObtainAdjacentPoints(piecePosition))
            {
                if (IsValidCell(offset, checkedPositions, out var cell))
                {
                    bool isConnectedToColony = IsConnectedToColony(offset);
                    bool isNearEnemy = IsNearEnemy(offset);
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

        private bool IsValidCell(Point offset, HashSet<Point> checkedPositions, out Polygon cell)
        {
            cell = null;
            return !_board.ContainsKey(offset) &&
                   _cellDictionary.TryGetValue(offset, out cell) &&
                   !checkedPositions.Contains(offset);
        }

        private bool IsConnectedToColony(Point offset)
        {
            return ObtainAdjacentPoints(offset).Exists(adj => _board.ContainsKey(adj) && _board[adj].PlayerName == UserProfileSingleton.username);
        }

        private bool IsNearEnemy(Point offset)
        {
            return ObtainAdjacentPoints(offset).Exists(adj => _board.ContainsKey(adj) && _board[adj].PlayerName != UserProfileSingleton.username);
        }

        private bool IsConnectedToHiveBeetle(Point position)
        {
            var adjacentPoints = ObtainAdjacentPoints(position);
            return adjacentPoints.Exists(adj => _board.ContainsKey(adj));
        }

        private bool IsContinouslyConnected(Point adjacent, Point previousPosition, Point currentPosition)
        {
            var adjacentPoints = ObtainAdjacentPoints(adjacent);
            return adjacentPoints.Exists(adj => _board.ContainsKey(adj) &&
                                                ObtainAdjacentPoints(adj).Contains(currentPosition) &&
                                                ObtainAdjacentPoints(adj).Contains(previousPosition));
        }

        private bool IsNotSurrounded(Point position)
        {
            var adjacentPoints = ObtainAdjacentPoints(position);
            int occupiedSides = adjacentPoints.Count(adj => _board.ContainsKey(adj));
            return occupiedSides != 5;
        }

        private bool IsConnectedToHive(Point position)
        {
            var adjacentPoints = ObtainAdjacentPoints(position);
            bool isConnectedToColony = adjacentPoints.Exists(adj => _board.ContainsKey(adj));
            return isConnectedToColony;
        }

        private List<Point> ObtainAdjacentPoints(Point piecePosition)
        {
            List<Point> adjacentPoints = new List<Point>();
            double epsilon = 0.0001;
            if (Math.Abs(piecePosition.X % 2 - 0) < epsilon)
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

        private List<Point> ObtaintAdjacentColliderPoints(Point offset, Point piecePosition)
        {
            List<Point> adjacentPoints = new List<Point>();
            double epsilon = 0.0001;
            if (Math.Abs(piecePosition.X % 2 - 0) < epsilon)
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

        private void PlacePieceOnCell(Polygon cell)
        {
            bool verifyServerConnectivity = VerifyConnectivityBeforeSendingPiece();
            if (verifyServerConnectivity)
            {
                foreach (var polygon in canva_GameBoardGrid.Children.OfType<Polygon>())
                {
                    polygon.IsEnabled = false;
                }
                _selectedPiece.Position = (Point)cell.Tag;
                Image pieceImage = ObtainImageCreation(cell, _selectedPiece);
                canva_GameBoardGrid.Children.Add(pieceImage);
                _board[_selectedPiece.Position] = _selectedPiece;
                RemovePieceFromPlayer(_selectedPiece);
                SendPiecePositionToServer(_selectedPiece);
                _lastPlacedCell = cell;
                _isFirstPiecePlaced = true;
                _selectedPiece = null;
                ResetHighlights();
            }
        }

        private void UnlockPlacesWhereThereIsPiece()
        {
            foreach (var pieceInBoard in _board)
            {
                Point placeToUnlock = pieceInBoard.Key;
                if (_cellDictionary.ContainsKey(placeToUnlock) && pieceInBoard.Value.PlayerName == UserProfileSingleton.username)
                {
                    _cellDictionary[placeToUnlock].IsEnabled = true;
                }
            }
            List<Image> imagesOnBoard = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            foreach(Image imageOnBoard in imagesOnBoard)
            {
                GamePiece piece = (GamePiece)imageOnBoard.Tag;
                if (piece.PlayerName == UserProfileSingleton.username)
                {
                    imageOnBoard.IsEnabled = true;
                }
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
                    playerName = gamePiece.Piece.PlayerName,
                    position = gamePiece.Piece.Position
                };
                HiveProxy.GamePice gamePieceMoved = new HiveProxy.GamePice()
                {
                    playerName = gamePiece.PlayerName,
                    piece = pieceMoved,
                    imagePath = gamePiece.ImagePath,
                    position = gamePiece.Position,
                    numberOfPiece = gamePiece.PieceNumber,
                };
                UserSession userSession = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username,
                    codeMatch = MatchSingleton.codeMatch
                };
                _gameManagerClient.MovePiece(gamePieceMoved, userSession, userSession.codeMatch);
                _gameManagerClient.SetTurns(userSession, userSession.codeMatch);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutExceptionGameBoard);
                ReturnToLoginView();
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
            }
        }

        private void RemovePieceFromPlayer(GamePiece piece)
        {
            if (_player1Pieces.Contains(piece))
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
            else if (_player2Pieces.Contains(piece))
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
            _isBeetleMoved = false;
            foreach (UIElement element in canva_GameBoardGrid.Children)
            {
                if (element is Polygon cell)
                {
                    cell.Fill = Brushes.Transparent;
                    cell.MouseDown -= Cell_MouseDown;
                    cell.MouseDown -= PlacePieceThatIsInGame_MouseDown;
                }
            }
            foreach (var cell in _cellDictionary)
            {
                cell.Value.IsEnabled = false;
            }
            foreach (UIElement element in canva_GameBoardGrid.Children)
            {
                if (element is Image image && image.Tag is Logic.GamePiece gamePiece && gamePiece.PlayerName != UserProfileSingleton.username)
                {
                    image.IsEnabled = false;
                    image.MouseDown -= PieceSelected_MouseDown;
                }
            }
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (!_IsMatchFinished)
            {
                if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogManagerConfirmationLeaveMatch))
                {
                    if (UserProfileSingleton.idAccount == Constants.DefaultGuestId)
                    {
                        DisconnectGuestPlayer();
                    }
                    else
                    {
                        DisconnectNormalPlayer();
                    }
                }
            }
            else
            {
                Constants.IsInMatch = false;
                LeaveFinishedMatch();
            }

        }

        private void LeaveFinishedMatch()
        {
            if (UserProfileSingleton.idAccount != Constants.DefaultGuestId)
            {
                LeavePlayer();
            }
            else
            {
                LeaveGuestPlayer();
            }
        }

        private void LeavePlayer()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession session = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username,
                    codeMatch = MatchSingleton.codeMatch,
                };
                _gameManagerClient.LeaveMatchFinished(session.codeMatch, session);
                GoToMainView();
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
            }
        }

        private void LeaveGuestPlayer()
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
                _gameManagerClient.LeaveMatchFinished(session.codeMatch, session);
                userSessionManagerClient.Disconnect(session, false);
                ReturnToLoginView();
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
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
                _gameManagerClient.LeaveTheGame(session, session.codeMatch);
                userSessionManagerClient.Disconnect(session, false);
                ReturnToLoginView();
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
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
                if (resultModification == Constants.SuccesOperation)
                {
                    leaderBoardManagerClient.UpdateLoserResultToPlayerLeaderBoard(UserProfileSingleton.idAccount);
                    UserSession session = new UserSession()
                    {
                        idAccount = UserProfileSingleton.idAccount,
                        username = UserProfileSingleton.username,
                        codeMatch = MatchSingleton.codeMatch,
                    };
                    _gameManagerClient.LeaveTheGame(session, session.codeMatch);
                    GoToMainView();
                }
                else if (resultModification == Constants.ErrorOperation)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
            }
        }
        private void GoToMainView()
        {
            Dispatcher.Invoke(() =>
            {
                MatchSingleton.Instance.ResetSingleton();
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
            }); 
        }

        public void ChargePlayerGameBoard(PlayerSide side)
        {
            if (side.playerOne)
            {
                DockPanel.SetDock(stckp_Player1,Dock.Bottom);
                DockPanel.SetDock(stckp_Player2, Dock.Top);
                img_ProfilePic1.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtb_PlayerName1.Text = UserProfileSingleton.username;
                stckp_Player2.IsEnabled = false;      
                _numberOfPlayer = 1;
            }
            else if (side.playerTwo)
            {
                DockPanel.SetDock(stckp_Player2,Dock.Bottom);
                DockPanel.SetDock(stckp_Player1,Dock.Top);
                stckp_Player1.IsEnabled = false;
                img_ProfilePic2.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
                txtb_PlayerName2.Text = UserProfileSingleton.username;
                _numberOfPlayer = 2;
            }
            DockPanel dockPanel = (DockPanel)this.Content;
            dockPanel.UpdateLayout();
        }
       

        public void ReceivePieceMoved(HiveProxy.GamePice piece)
        {
            _hasOtherPlayerMoved = true;
            StopTurnTimeoutTimer();
            if (piece != null)
            {
                Logic.Piece pieceReceived = CreateConcretePieceType(piece);
                Logic.GamePiece gamePieceReceived = new Logic.GamePiece()
                {
                    Piece = pieceReceived,
                    PlayerName = piece.playerName,
                    Position = piece.position,
                    ImagePath = piece.imagePath,
                    PieceNumber = piece.numberOfPiece,
                };
                gamePieceReceived.Piece.Position = piece.piece.position;
                GamePiece pieceToAdd = gamePieceReceived;
                Point pointOfPieceToAdd = gamePieceReceived.Position;
                Point previousPositionPlaced = gamePieceReceived.Piece.Position;
                RemovePieceReceiveFromPlayerStackPanel(gamePieceReceived);
                pieceToAdd.Position = pointOfPieceToAdd;
                pieceToAdd.Piece.Position = previousPositionPlaced;
                UpdatePiecePositionOnBoard(pieceToAdd);
            }
        }

        private static Logic.Piece CreateConcretePieceType(HiveProxy.GamePice piece)
        {
            Logic.Piece pieceObtained = null;
            string typeOfPiece = piece.piece.name;
            switch (typeOfPiece)
            {
                case _QueenPieceName:
                    pieceObtained = new Queen();
                    break;
                case "Spider":
                    pieceObtained = new Spider();
                    break;
                case BeetlePieceName:
                    pieceObtained = new Beetle();
                    break;
                case "Ant":
                    pieceObtained = new Ant();
                    break;
                case "Grasshopper":
                    pieceObtained = new Grasshopper();
                    break;
            }
            pieceObtained.PlayerName = piece.playerName;
            return pieceObtained;
        }

        private void RemovePieceReceiveFromPlayerStackPanel(GamePiece piece)
        {
            GamePiece pieceAuxiliar = piece;
            pieceAuxiliar.Position = new Point(-1, -1);
            if (_player1Pieces.Contains(pieceAuxiliar))
            {
                foreach (var child in stckp_Player1Pieces.Children.OfType<Image>())
                {
                    if (child.Tag is GamePiece tagPiece && tagPiece.PieceNumber == pieceAuxiliar.PieceNumber && tagPiece.PlayerName == piece.PlayerName) 
                    {
                        stckp_Player1Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
            else if (_player2Pieces.Contains(pieceAuxiliar))
            {
                foreach (var child in stckp_Player2Pieces.Children.OfType<Image>())
                {
                    if (child.Tag is GamePiece tagPiece && tagPiece.PieceNumber == pieceAuxiliar.PieceNumber && tagPiece.PlayerName == piece.PlayerName)
                    {
                        stckp_Player2Pieces.Children.Remove(child);
                        break;
                    }
                }
            }
        }

        private void UpdateBeetleOnAPieceReceived(GamePiece piece, Image imageOfPieceToSafe)
        {
            GamePiece pieceToKeepSafe = imageOfPieceToSafe.Tag as GamePiece;
            List<Image> imagesOfPieces = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            Image imageWhereBeetleIs = new Image();
            foreach (var imageOnBeetle in imagesOfPieces)
            {
                GamePiece beetlePiece = imageOnBeetle.Tag as GamePiece;
                if (beetlePiece.PieceNumber == piece.PieceNumber && beetlePiece.PlayerName == piece.PlayerName)
                {
                    imageWhereBeetleIs = imageOnBeetle;
                    break;
                }
            }
            if (_piecesCapturedByTheBeetle.ContainsKey((piece.PieceNumber, piece.PlayerName)))
            {
                RestoreOriginalPieceCapturedByTheBeetleReceived(imageWhereBeetleIs, piece);
            }
            else
            {
                PieceToReplaceByTheBeetleReceived(piece, pieceToKeepSafe, imageWhereBeetleIs);
            }
            RemoveExistingPieceInBoard(piece);
            _piecesCapturedByTheBeetle.Add((piece.PieceNumber, piece.PlayerName), imageOfPieceToSafe);
            Polygon cellOfPieceToSafe = _cellDictionary[pieceToKeepSafe.Position];
            UpdateGameboardOfBeetlePieceReceivedToGrid(cellOfPieceToSafe, piece);
        }

        private void RestoreOriginalPieceCapturedByTheBeetleReceived(Image imageWhereBeetleIs, GamePiece beetlePiece)
        {
            Image originalPieceImage = _piecesCapturedByTheBeetle[(beetlePiece.PieceNumber, beetlePiece.PlayerName)];
            GamePiece originalPiece = originalPieceImage.Tag as GamePiece;
            _board.Remove(originalPiece.Position);
            _board.Add(originalPiece.Position, originalPiece);
            if (canva_GameBoardGrid.Children.Contains(imageWhereBeetleIs))
            {
                List<UIElement> childrenGrid = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemoveBeetle = childrenGrid.IndexOf(imageWhereBeetleIs);
                canva_GameBoardGrid.Children.RemoveAt(indexToRemoveBeetle);
            }
            if (canva_GameBoardGrid.Children.Contains(originalPieceImage))
            {
                List<UIElement> childrenGridNewPiece = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemoveNewPiece = childrenGridNewPiece.IndexOf(originalPieceImage);
                canva_GameBoardGrid.Children.RemoveAt(indexToRemoveNewPiece);
            }
            canva_GameBoardGrid.Children.Add(originalPieceImage);
            _piecesCapturedByTheBeetle.Remove((beetlePiece.PieceNumber, beetlePiece.PlayerName));
        }

        private void PieceToReplaceByTheBeetleReceived(GamePiece beetlePiece, GamePiece pieceToKeepSafe, Image imageWhereBeetleIs)
        {
            RemoveImageFromCanvas(imageWhereBeetleIs);
            RemoveImageForPieceToKeepSafe(pieceToKeepSafe);
            UpdateBoard(beetlePiece, pieceToKeepSafe);
        }

        private void RemoveImageFromCanvas(Image imageToRemove)
        {
            var childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
            int indexToRemove = childrenGrids.IndexOf(imageToRemove);
            if (indexToRemove != -1)
            {
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }
        }

        private void RemoveImageForPieceToKeepSafe(GamePiece pieceToKeepSafe)
        {
            foreach (UIElement child in canva_GameBoardGrid.Children)
            {
                if (child is Image image && image.Tag is GamePiece piece && IsMatchingPiece(piece, pieceToKeepSafe))
                {
                    canva_GameBoardGrid.Children.Remove(image);
                    break;
                }
            }
        }

        private static bool IsMatchingPiece(GamePiece piece, GamePiece pieceToKeepSafe)
        {
            return piece.PieceNumber == pieceToKeepSafe.PieceNumber &&
                   piece.PlayerName == pieceToKeepSafe.PlayerName &&
                   pieceToKeepSafe.Position == piece.Position;
        }

        private void UpdateBoard(GamePiece beetlePiece, GamePiece pieceToKeepSafe)
        {
            _board.Remove(pieceToKeepSafe.Position);
            if (_board.ContainsKey(beetlePiece.Position) && _board[beetlePiece.Position] == beetlePiece)
            {
                _board.Remove(beetlePiece.Position);
            }
        }

        private void RemoveExistingPieceInBoard(GamePiece piece)
        {
            if (_board.ContainsKey(piece.Piece.Position) && _board[piece.Piece.Position].PieceNumber == piece.PieceNumber && _board[piece.Piece.Position].PlayerName == piece.PlayerName)
            {
                _board.Remove(piece.Piece.Position);
            }
        }

        private void UpdateGameboardOfBeetlePieceReceivedToGrid(Polygon cell, GamePiece piece)
        {
            Image pieceImage = ObtainImageCreation(cell, piece);
            canva_GameBoardGrid.Children.Add(pieceImage);
            _board[piece.Position] = piece;
            _lastPlacedCell = cell;
        }

        private Image ObtainImageOfPieceToSafe(GamePiece piece)
        {
            Image imageOfPieceToSafe = new Image();
            var listOfImages = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            foreach(var imageOnGrid in listOfImages)
            {
                if(imageOnGrid.Tag is GamePiece gamePiece && gamePiece.Position == piece.Position)
                {
                    imageOfPieceToSafe = imageOnGrid;
                }
            }
            return imageOfPieceToSafe;
        }

        private void UpdateOldAndNewPlaceInGameBoardReceived(Image pieceImage, Point oldPosition)
        {
            if (_board.ContainsKey(oldPosition))
            {
                _board.Remove(oldPosition);
            }
            var imagesOnGameBoardGrid = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            GamePiece pieceToMove = pieceImage.Tag as GamePiece;
            Image imageToRemove = new Image();
            foreach (var imageOnGrid in imagesOnGameBoardGrid)
            {
                GamePiece piece = imageOnGrid.Tag as GamePiece;
                if (piece.Piece.Position == oldPosition && piece.PieceNumber == pieceToMove.PieceNumber && piece.PlayerName == pieceToMove.PlayerName)
                {
                    imageToRemove = imageOnGrid;
                    break;
                }
            }
            List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
            int indexToRemove = childrenGrids.IndexOf(imageToRemove);
            if (indexToRemove != -1)
            {
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }
            canva_GameBoardGrid.Children.Add(pieceImage);
            GamePiece pieceToAdd = pieceImage.Tag as GamePiece;
            _board[pieceToAdd.Position] = pieceToAdd;
        }

        private void VerifyIfBeetleIsOnAPieceToPlaceIt(GamePiece piece)
        {
            Point oldPosition = piece.Piece.Position; 
            Polygon cell = _cellDictionary[piece.Position];
            Image imageOfPiece = ObtainImageCreation(cell, piece);
            if(_piecesCapturedByTheBeetle.ContainsKey((piece.PieceNumber, piece.PlayerName))){
                Image pieceContainedByTheBeetle = _piecesCapturedByTheBeetle[(piece.PieceNumber,piece.PlayerName)];
                UpdateOldAndNewPlaceInGameBoardReceived(imageOfPiece, oldPosition);
                ReturnOriginalPositionOfPieceCapturedByTheBeetle(pieceContainedByTheBeetle, piece);
            }
            else
            {
                UpdateOldAndNewPlaceInGameBoardReceived(imageOfPiece,oldPosition);
            }
        }

        private void UpdatePiecePositionOnBoard(GamePiece piece)
        {
            _cellDictionary.TryGetValue(piece.Position, out var cell);
            if (piece.Piece.Name == BeetlePieceName && _board.ContainsKey(piece.Position))
            {
                Image imageOfPieceToSafe = ObtainImageOfPieceToSafe(piece);
                UpdateBeetleOnAPieceReceived(piece, imageOfPieceToSafe);
            }
            else if(piece.Piece.Name == BeetlePieceName && _piecesCapturedByTheBeetle.ContainsKey((piece.PieceNumber, piece.PlayerName)))
            {
                VerifyIfBeetleIsOnAPieceToPlaceIt(piece);
            }
            else
            {
                PlacePieceReceivedOnCellToUpdate(cell, piece);
            }
        }

        private void PlacePieceReceivedOnCellToUpdate(Polygon cell, GamePiece piece)
        {
            if(cell != null && piece != null)
            {
                Point oldPosition = piece.Piece.Position;
                Image pieceImage = ObtainImageCreation(cell,piece);
                if (_board.ContainsKey(piece.Piece.Position))
                {
                    UpdateReceivedPiece(pieceImage, oldPosition);
                }
                else
                {
                    canva_GameBoardGrid.Children.Add(pieceImage);
                    _board[piece.Position] = piece;
                    _lastPlacedCell = cell;
                }
            }
        }

        private void UpdateReceivedPiece(Image pieceImage, Point oldPosition)
        {
            if (_board.ContainsKey(oldPosition))
            {
                _board.Remove(oldPosition);
            }
            var listOfElements = canva_GameBoardGrid.Children.OfType<Image>().ToList();
            GamePiece piece = pieceImage.Tag as GamePiece;
            Image imageToQuite = new Image();
            foreach (var element in listOfElements)
            {
                GamePiece pieceToQuit = (GamePiece)element.Tag;
                if(pieceToQuit.Position == oldPosition && pieceToQuit.PieceNumber == piece.PieceNumber && pieceToQuit.PlayerName == piece.PlayerName)
                {
                    imageToQuite = element;
                    break;
                }
            }
            EliminateDuplicatedImagesIfExistsReceived(oldPosition);
            List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
            int indexToRemove = childrenGrids.IndexOf(imageToQuite);
            if(indexToRemove != -1)
            {
                canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
            }   
            canva_GameBoardGrid.Children.Add(pieceImage);
            GamePiece pieceToAdd = pieceImage.Tag as GamePiece;
            _board[pieceToAdd.Position] = pieceToAdd;
        }

        private void EliminateDuplicatedImagesIfExistsReceived(Point oldPosition)
        {
            var imagesToRemove = canva_GameBoardGrid.Children
                .OfType<Image>()
                .Where(image =>
                        image.Tag is GamePiece piece && piece.Position == oldPosition)
                .ToList();
            for (int indexOfImage = 0; indexOfImage < imagesToRemove.Count; indexOfImage++)
            {
                Image imageToQuit = imagesToRemove[indexOfImage];
                List<UIElement> childrenGrids = canva_GameBoardGrid.Children.OfType<UIElement>().ToList();
                int indexToRemove = childrenGrids.IndexOf(imageToQuit);
                if (indexToRemove != -1)
                {
                    canva_GameBoardGrid.Children.RemoveAt(indexToRemove);
                }
            }
        }

        public void ReceiveTurns(bool isTurn)
        {
            if (isTurn)
            {
                StopTurnTimeoutTimer();
                txtb_PlayerName.Text = UserProfileSingleton.username;
                _isOtherPlayerTurn = false; 
                _hasOtherPlayerMoved = false;
                if (_numberOfPlayer == 1)
                {
                    stckp_Player1.IsEnabled = true;
                    EnablePiecesOnBoard();
                    UnlockPlacesWhereThereIsPiece();
                }
                else
                {
                    stckp_Player2.IsEnabled = true;
                    UnlockPlacesWhereThereIsPiece();
                    EnablePiecesOnBoard();
                }
                _numberOfTurn++;
            }
            else
            {
                StartTurnTimeoutTimer();
                for (int indexUsersInMatch = 0; indexUsersInMatch < _usersInGame.Count; indexUsersInMatch++)
                {
                    if (_usersInGame[indexUsersInMatch].username != UserProfileSingleton.username)
                    {
                        txtb_PlayerName.Text = _usersInGame[indexUsersInMatch].username;
                    }
                }
                _isOtherPlayerTurn = true;
                if (_numberOfPlayer == 1)
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

        private void StartTurnTimeoutTimer()
        {
            _turnTimeoutTimer = new TimersTimer(10000);
            _turnTimeoutTimer.Elapsed += OnTurnTimeout;
            _turnTimeoutTimer.AutoReset = false; 
            _turnTimeoutTimer.Enabled = true;
        }

        private void StopTurnTimeoutTimer()
        {
            if (_turnTimeoutTimer != null)
            {
                _turnTimeoutTimer.Stop();
                _turnTimeoutTimer.Dispose();
                _turnTimeoutTimer = null;
            }
        }

        private void OnTurnTimeout(object sender, ElapsedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (_isOtherPlayerTurn) 
            {
                bool connection = false;
                try
                {
                    connection = _gameManagerClient.CheckPersonalConnection();
                }catch(TimeoutException timeOutException)
                {
                    logger.LogWarn(timeOutException);
                    NotifyDisconnection();
                }
                if (connection)
                {
                    CheckIfOtherPlayerConnected();
                }
            }
        }

        private void CheckIfOtherPlayerConnected()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                _gameManagerClient.CheckConnection(_usersInGame.First(u => u.username != UserProfileSingleton.username).username);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
            }
        }

        private void NotifyDisconnection()
        {
            Dispatcher.Invoke(() =>
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutExceptionGameBoard);
                ReturnToLoginView();
            });
        }

        private void EnablePiecesOnBoard()
        {
            foreach (UIElement element in canva_GameBoardGrid.Children)
            {
                if (element is Image image && image.Tag is Logic.GamePiece gamePiece && gamePiece.PlayerName == UserProfileSingleton.username)
                {
                    image.IsEnabled = true;
                    image.MouseDown += PieceSelected_MouseDown;
                }
            }
        }

        private void DisablePiecesOnBoard()
        {
            foreach (UIElement element in canva_GameBoardGrid.Children)
            {
                if (element is Image image && image.Tag is Logic.GamePiece)
                {
                    image.IsEnabled = false;
                    image.MouseDown -= PieceSelected_MouseDown;
                }
            }
        }

        public void ReceivePlayersToMatch(UserSession[] userSession)
        {
            _usersInGame = userSession.ToList();
            for(int indexUsersInMatch = 0;indexUsersInMatch < _usersInGame.Count;indexUsersInMatch++)
            {
                UserSession user = _usersInGame[indexUsersInMatch];  
                Profile profileUser = GetUserProfile(user);
                UpdatePlayerDisplay(user, profileUser);
            }
        }

        private static Profile GetUserProfile(UserSession user)
        {
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            Profile profileUser = userManagerClient.GetUserProfileByUsername(user.username);
            if (profileUser.idAccesAccount == Constants.ErrorOperation || user.idAccount == Constants.DefaultGuestId)
            {
                profileUser.imagePath = "/Images/Avatars/Avatar1.png";
            }
            return profileUser;
        }

        private void UpdatePlayerDisplay(UserSession user, Profile profileUser)
        {
            _usernamePlayer1 = _usersInGame[0].username;
            if (IsPlayer1SlotAvailable(user))
            {
                txtb_PlayerName1.Text = user.username;
                img_ProfilePic1.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
            }
            if (_usersInGame.Count == 2)
            {
                _usernamePlayer2 = _usersInGame[1].username;
                if (IsPlayer2SlotAvailable(user))
                {
                    txtb_PlayerName2.Text = user.username;
                    img_ProfilePic2.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                }
            }
            LoadPlayerPieces(stckp_Player1Pieces, _player1Pieces, _usernamePlayer1);
            LoadPlayerPieces(stckp_Player2Pieces, _player2Pieces, _usernamePlayer2);
        }

        private bool IsPlayer1SlotAvailable(UserSession user)
        {
            return txtb_PlayerName1.Text == Properties.Resources.txtbl_Player1 &&
                   txtb_PlayerName2.Text == UserProfileSingleton.username &&
                   !user.username.Equals(txtb_PlayerName2.Text);
        }

        private bool IsPlayer2SlotAvailable(UserSession user)
        {
            return txtb_PlayerName2.Text == Properties.Resources.txtbl_Player2 &&
                   txtb_PlayerName1.Text == UserProfileSingleton.username &&
                   !user.username.Equals(txtb_PlayerName1.Text);
        }

        public void ReceivePlayerHasLeftNotification(bool doPlayerLeftTheGame)
        {
            if (doPlayerLeftTheGame)
            {
                LoggerManager logger = new LoggerManager(this.GetType());
                bool exceptionOccurred = false;
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogUserHasLeftTheMatch);
                try
                {
                    UserSession userSession = CreateUserSession();
                    if (UserProfileSingleton.idAccount != Constants.DefaultGuestId)
                    {
                        UpdateUserReputation(userSession);
                    }
                    _gameManagerClient.LeaveTheGame(userSession, userSession.codeMatch);
                }
                catch (EndpointNotFoundException endpointNotFoundException) 
                {
                    HandleException(endpointNotFoundException, logger);
                    exceptionOccurred = true;
                }
                catch(TimeoutException timeoutException)
                {
                    HandleException(timeoutException, logger);
                    exceptionOccurred = true;
                }
                catch(CommunicationException communicationException)
                {
                    HandleException(communicationException, logger);
                    exceptionOccurred = true;
                }
                HandlePostLeaveActions(exceptionOccurred);
            }
        }

        private UserSession CreateUserSession()
        {
            return new UserSession
            {
                username = UserProfileSingleton.username,
                idAccount = UserProfileSingleton.idAccount,
                codeMatch = MatchSingleton.codeMatch
            };
        }

        private static void UpdateUserReputation(UserSession userSession)
        {
            HiveProxy.UserManagerClient userManagerClient = new UserManagerClient();
            userManagerClient.UpdatePlusUserReputation(userSession.username, 25);
        }

        private static void HandleException(Exception exception, LoggerManager logger)
        {
            if (exception is EndpointNotFoundException)
            {
                logger.LogFatal(exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            else if (exception is TimeoutException)
            {
                logger.LogWarn(exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            else if (exception is CommunicationException)
            {
                logger.LogFatal(exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void HandlePostLeaveActions(bool exceptionOccurred)
        {
            if (exceptionOccurred || UserProfileSingleton.idAccount == Constants.DefaultGuestId)
            {
                ReturnToLoginView();
            }
            else
            {
                GoToMainView();
            }
        }

        public void ReturnToLoginView()
        {
            MatchSingleton.Instance.ResetSingleton();
            UserProfileSingleton.Instance.ResetSingleton();
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        public void ReceiveFinalMatchResult(string winner)
        {
            LockGameBoardAndStackPanels();
            if (winner == "Draw")
            {
                ShowVictoryMessage("Draw");
                _IsMatchFinished = true;
                if(UserProfileSingleton.idAccount != Constants.DefaultGuestId)
                {
                    RegisterMatchDrawResult();
                }
            }
            else
            {
                ShowVictoryMessage(winner);
                _IsMatchFinished = true;
                if (UserProfileSingleton.idAccount != Constants.DefaultGuestId)
                {
                    RegisterMatchResult(winner);
                }
            }
            Constants.IsInMatch = false;
        }

        private void RegisterMatchResult(string winner)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.LeaderBoardManagerClient leaderBoardManagerClient = new HiveProxy.LeaderBoardManagerClient();
                HiveProxy.MatchCreatorManagerClient matchCreatorManagerClient = new HiveProxy.MatchCreatorManagerClient();
                int updateResult = 0;
                if (winner == UserProfileSingleton.username)
                {
                    updateResult = leaderBoardManagerClient.UpdateWinnerResultToPlayerLeaderBoard(UserProfileSingleton.idAccount);
                }
                else
                {
                    updateResult = leaderBoardManagerClient.UpdateLoserResultToPlayerLeaderBoard(UserProfileSingleton.idAccount);
                }
                if (updateResult == 1)
                {
                    MatchCreator matchCreation = new MatchCreator()
                    {
                        idCreatorAccount = UserProfileSingleton.idAccount,
                        codeMatch = MatchSingleton.codeMatch,
                        stateMatch = "Finished"
                    };
                    matchCreatorManagerClient.UpdateMatchState(matchCreation);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSaveMatchInfo);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
            }
        }

        private void RegisterMatchDrawResult()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.LeaderBoardManagerClient leaderBoardManagerClient = new HiveProxy.LeaderBoardManagerClient();
                HiveProxy.MatchCreatorManagerClient matchCreatorManagerClient = new HiveProxy.MatchCreatorManagerClient();
                int updateResult = leaderBoardManagerClient.UpdateDrawResultToPlayerLeaderBoard(UserProfileSingleton.idAccount);
                if(updateResult == 1)
                {
                    MatchCreator matchCreation = new MatchCreator()
                    {
                        idCreatorAccount = UserProfileSingleton.idAccount,
                        codeMatch = MatchSingleton.codeMatch,
                        stateMatch = "Finished"
                    };
                    matchCreatorManagerClient.UpdateMatchState(matchCreation);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSaveMatchInfo);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ReturnToLoginView();
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ReturnToLoginView();
            }
        }

        private void ShowVictoryMessage(string result)
        {
            if (result == "Draw")
            {
                txtb_VictoryMessage.Text = Properties.Resources.lbl_Draw;
            }
            else if (result == UserProfileSingleton.username)
            {
                txtb_VictoryMessage.Text = Properties.Resources.lbl_Winner;
            }
            else
            {
                txtb_VictoryMessage.Text = Properties.Resources.lbl_Defeat;
            }
            grd_VictoryOverlay.Visibility = Visibility.Visible;
            Storyboard victoryStoryboard = (Storyboard)FindResource("storyb_VictoryAnimation");
            victoryStoryboard.Begin();
        }

        private void LockGameBoardAndStackPanels()
        {
            stckp_Player1.IsEnabled = false;
            stckp_Player2.IsEnabled = false;
            stckp_Player1Pieces.IsEnabled = false;
            stckp_Player2Pieces.IsEnabled = false;
            foreach(UIElement element in canva_GameBoardGrid.Children)
            {
                if (element is Image image)
                {
                    image.IsEnabled = false;
                }
            }
        }

        public void PlayerDisconnected(string disconnectedUsername)
        {
            Dispatcher.Invoke(() =>
            {
                string message = disconnectedUsername + Properties.Resources.dialogLostConnection;
                DialogManager.ShowErrorMessageAlert(message);

                if (UserProfileSingleton.idAccount == Constants.DefaultGuestId)
                {
                    ReturnToLoginView();
                }
                else
                {
                    GoToMainView();
                }
            });
        }

        public void RecieveRequestPingFromOtherPlayer()
        {
            _IsMatchFinished = false;
        }
    }
}
