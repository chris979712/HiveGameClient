using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameWPFApp.Logic
{
    public static class ProfileGenerator
    {
        private static readonly Random _random = new Random(); 

        public static string RandomDescriptionGenerator()
        {
            string[] defaultDescriptions = { "Hi, im new at this.","Always looking for the next challenge.","Exploring the world" +
                    "one step at a time.","sometimes shy, but always watching.","Growing, learning and improving","Passionate about"+
                    " technology and good stories"+"Coffee lover and rainy days enthusiast" };
            
            int randomIndex = _random.Next(defaultDescriptions.Length);
            return defaultDescriptions[randomIndex];
        }

        public static string RandomChooserAvatarIcon()
        {
            string[] defaultAvatars = { "/Images/Avatars/Avatar1.png", "/Images/Avatars/Avatar2.png", "/Images/Avatars/Avatar3.png",
                "/Images/Avatars/Avatar4.png", "/Images/Avatars/Avatar5.png", "/Images/Avatars/Avatar6.png" };
            
            int randomIndex = _random.Next(defaultAvatars.Length);
            return defaultAvatars[randomIndex];
        }

        public static string RandomChooserUsername()
        {
           
            int randomIndexNumber = _random.Next(1,1000000);
            string defaultUsername = "Guest"+randomIndexNumber;
            return defaultUsername;
        }
    }
}
