using HiveGameWPFApp.HiveProxy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameWPFApp.Logic
{
    public  class UserProfileSingleton
    {

        private static readonly UserProfileSingleton _singletonInstance = new UserProfileSingleton();
        public static string username { get; set; }
        public static string password { get; set; }
        public static string email {  get; set; }
        public static int idAccount { get; set; }
        public static int idProfile { get; set; }
        public static string nickname { get; set; }
        public static string imageRoute { get; set; }
        public static DateTime createdDate { get; set; }
        public static int idAssociatedAccount { get; set; }
        public static string description { get; set; }

        public static UserProfileSingleton Instance => _singletonInstance;

        public void CreateInstance(Profile profile)
        {
            username = profile.username;
            password = profile.password;
            email = profile.email;
            idAccount = profile.idAccount;
            idProfile = profile.idProfile;
            nickname = profile.nickname;
            imageRoute = profile.imagePath;
            createdDate = profile.createdDate;
            idAssociatedAccount = profile.idAccount;
            description = profile.description;
        }

        public void ResetSingleton()
        {
            username = null;
            password = null;
            email = null;
            idAccount = 0;
            idProfile = 0;
            nickname = null;
            imageRoute = null;
            createdDate = DateTime.MinValue;
            idAssociatedAccount = 0;
            description = null;
        }
    }
}
