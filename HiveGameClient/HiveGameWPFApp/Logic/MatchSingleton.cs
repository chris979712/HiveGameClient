﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameWPFApp.Logic
{
    public class MatchSingleton
    {
        private static readonly MatchSingleton SingletonInstance = new MatchSingleton();

        public static string codeMatch {  get; set; }

        public static MatchSingleton Instance => SingletonInstance;

        public void CreateInstance(string code)
        {
            codeMatch = code;
        }

        public void ResetSingleton()
        {
            codeMatch = null;
        }
    }
}
