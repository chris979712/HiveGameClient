using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace HiveGameWPFApp.Logic
{
    public static class Constants
    {
        public const int ErrorOperation = -1;

        public const int SuccesOperation = 1;

        public const int NoDataMatches = 0;

        public const int DataMatches = 1;

        public const int DefaultGuestId = 0;

        public const string DefaultImagePlayer = " ";

        public const string DefaultImageGuest = " ";

        private static bool _isInMatch = false;

        public static bool IsInMatch
        {
            get => _isInMatch;
            set => _isInMatch = value;
        }
    }
}
