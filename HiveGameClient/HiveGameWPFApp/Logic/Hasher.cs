﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameWPFApp.Logic
{
    public class Hasher
    {
        public static string hashToSHA1(string textToHash)
        {
            StringBuilder stringHashBuilder = new StringBuilder();
            byte[] inputBytes = Encoding.UTF8.GetBytes(textToHash);
            using(SHA1 sha1 = SHA1.Create())
            {
                byte[] hashBytes = sha1.ComputeHash(inputBytes);
                string hexaDecimalFormat = "x2";
                for(int indexBytes = 0;  indexBytes < hashBytes.Length; indexBytes++)
                {
                    stringHashBuilder.Append(hashBytes[indexBytes].ToString(hexaDecimalFormat));
                }
            }
            return stringHashBuilder.ToString();
        }

    }
}
