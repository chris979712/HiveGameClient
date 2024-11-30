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
        public int PieceNumber {  get; set; }
        public string ImagePath { get; set; }
        public Point Position { get; set; }
        public string PlayerName { get; set; }
        public GamePiece(Piece piece, string imagePath, Point position, string playername, int pieceNumber)
        {

            Piece = piece;
            ImagePath = imagePath;
            Position = position;
            PlayerName = playername;
            this.PieceNumber = pieceNumber;

        }

        public GamePiece()
        {

        }

    }
}
