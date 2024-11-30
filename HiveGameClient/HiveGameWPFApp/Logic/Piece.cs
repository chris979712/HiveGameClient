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
        public Point Position { get; set; }
        public string PlayerName { get; set; }


    }

    public class Queen : Piece
    {
        public Queen()
        {
            Name = "Queen";
            PlayerName = " ";
        }
    }

    public class Spider : Piece
    {
        public Spider()
        {
            Name = "Spider";
            PlayerName = " ";
        }


    }
    public class Beetle : Piece
    {
        public Beetle()
        {
            Name = "Beetle";
            PlayerName = " ";
        }

    }
    public class Ant : Piece
    {
        public Ant()
        {
            Name = "Ant";
            PlayerName = " ";
        }

    }
    public class Grasshopper : Piece
    {
        public Grasshopper()
        {

            Name = "Grasshopper";
            PlayerName = " ";
        }

    }

}
