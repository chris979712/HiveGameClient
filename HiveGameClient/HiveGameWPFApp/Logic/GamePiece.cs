using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


namespace HiveGameWPFApp.Logic
{
    public partial class GamePiece
    {
        public Piece Piece { get; set; }
        public string ImagePath { get; set; }
        public Point Position { get; set; }

        public GamePiece(Piece piece, string imagePath, Point position)
        {
            Piece = piece;
            ImagePath = imagePath;
            Position = position;
        }
    }
}
