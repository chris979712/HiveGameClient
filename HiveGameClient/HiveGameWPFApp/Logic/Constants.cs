using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace HiveGameWPFApp.Logic
{
    public static class Constants
    {
        public const int ERROR_OPERATION = -1;

        public const int SUCCES_OPERATION = 1;

        public const int NO_DATA_MATCHES = 0;

        public const int DATA_MATCHES = 1;

        public const int DEFAULT_GUEST_ID = 0;

        public const string DEFAULT_IMAGE_PLAYER = " ";

        public const string DEFAULT_IMAGE_GUEST = " ";

        private static bool _isInMatch = false;

        public static bool IsInMatch
        {
            get => _isInMatch;
            set => _isInMatch = value;
        }
    }
}
