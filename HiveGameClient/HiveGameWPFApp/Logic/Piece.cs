using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace HiveGameWPFApp.Logic
{
    public abstract class Piece
    {
        public string Name { get; set; }
        public int Count { get; set; }
        public Point Position { get; set; }

        public abstract bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board);

        public override bool Equals(object obj)
        {
            if (obj is Piece other)
            {
                return this.Name == other.Name && this.Count == other.Count && this.Position.Equals(other.Position);
            }
            return false;
        }
    }

    public class Queen : Piece
    {
        public Queen()
        {
            Name = "Queen";
            Count = 1;
        }

        public override bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board)
        {
            var validOffsets = new List<Point>
            {
                new Point(-1, 0), new Point(1, 0), new Point(0, -1), new Point(0, 1),
                new Point(-1, 1), new Point(1, -1)
            };

            return validOffsets.Contains(new Point(to.X - from.X, to.Y - from.Y)) &&
                   !board.ContainsKey(to);  
        }
    }

    public class Spider : Piece
    {
        public Spider()
        {
            Name = "Spider";
            Count = 2;
        }

        public override bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board)
        {
            var distance = Math.Abs(to.X - from.X) + Math.Abs(to.Y - from.Y);
            if (distance != 3) return false;
            
            return !board.ContainsKey(to);  
        }
    }
    public class Beetle : Piece
    {
        public Beetle()
        {
            Name = "Beetle";
            Count = 2;
        }

        public override bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board)
        {
            return board.ContainsKey(from) && !board.ContainsKey(to);  // Asegúrese de que el destino esté vacío
        }
    }
    public class Ant : Piece
    {
        public Ant()
        {
            Name = "Ant";
            Count = 3;
        }

        public override bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board)
        {
            var xDiff = to.X - from.X;
            var yDiff = to.Y - from.Y;
            var direction = new Point(xDiff, yDiff);

            if (board.ContainsKey(to)) return false;

            return xDiff == 0 || yDiff == 0 || Math.Abs(xDiff) == Math.Abs(yDiff);
        }
    }
    public class Grasshopper : Piece
    {
        public Grasshopper()
        {
            Name = "Grasshopper";
            Count = 3;
        }

        public override bool IsValidMove(Point from, Point to, Dictionary<Point, Piece> board)
        {
            var xDiff = to.X - from.X;
            var yDiff = to.Y - from.Y;

            if (xDiff == 0 || yDiff == 0 || Math.Abs(xDiff) == Math.Abs(yDiff))
            {
                var stepX = xDiff == 0 ? 0 : xDiff / Math.Abs(xDiff);
                var stepY = yDiff == 0 ? 0 : yDiff / Math.Abs(yDiff);
                double x = from.X, y = from.Y;

                while (x != to.X || y != to.Y)
                {
                    x += stepX;
                    y += stepY;
                    if (board.ContainsKey(new Point(x, y))) return true;  // Si hay una pieza en el camino, el salto es válido
                }
            }

            return false;
        }
    }
    public class GameBoard
    {
        private Dictionary<Point, Piece> board = new Dictionary<Point, Piece>();

        public bool PlacePiece(Point position, Piece piece)
        {
            if (!piece.IsValidMove(piece.Position, position, board)) return false;

            board[position] = piece;
            return true;
        }

        public bool RemovePiece(Point position)
        {
            if (board.ContainsKey(position))
            {
                board.Remove(position);
                return true;
            }
            return false;
        }

        public Piece GetPieceAt(Point position)
        {
            return board.ContainsKey(position) ? board[position] : null;
        }
    }


}
