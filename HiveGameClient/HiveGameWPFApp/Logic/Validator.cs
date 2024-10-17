using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace HiveGameWPFApp.Logic
{
    public static class Validator
    {

        private static Regex passwordRegex = new Regex("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d\\W]{10,50}$",RegexOptions.None,TimeSpan.FromMilliseconds(1000));
        private static Regex usernameRegex = new Regex("^[A-Za-z0-9_]{5,50}$",RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex nicknameRegex = new Regex("^[A-Za-z0-9_]{5,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex numbersRegrex = new Regex("^[0-9]+$",RegexOptions.None, TimeSpan.FromMilliseconds(500));
        private static Regex dateRegex = new Regex(@"^(19|20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex codeLobbyMatchRegex = new Regex(@"^[A-Za-z0-9]{6}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex stateRegex = new Regex(@"^[A-Z][a-zA-Z]{4,15}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));

        public static bool validateRegexPattern(string data, Regex regex)
        {
            bool isValid = false;
            try
            {
                isValid = regex.IsMatch(data);
            }
            catch (RegexMatchTimeoutException)
            {
                isValid = false;
            }
            return isValid;
        }

        public static bool validatePassword(string password) 
        {
            bool isValid = false;
            string cleanedPassword = Regex.Replace(password.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedPassword) &&validateRegexPattern(cleanedPassword, passwordRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool validateUsername(string username)
        {
            bool isValid = false;
            string cleanedUsername = Regex.Replace(username.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedUsername) && validateRegexPattern(cleanedUsername, usernameRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool validateEmail(string email)
        {
            bool isValid = false;
            string cleanedEmail = Regex.Replace(email.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedEmail)&&cleanedEmail.Length<254)
            {
                try
                {
                    var mailAddress = new MailAddress(cleanedEmail);
                    isValid = true;
                }
                catch (FormatException)
                {
                    isValid = false;
                }
            }
            return isValid;
        }

        public static bool validateNickName(string nickName)
        {
            bool isValid = false;
            string cleanedNickName = Regex.Replace(nickName.Trim(), @"\s+", "");
            if(!string.IsNullOrWhiteSpace(cleanedNickName) && validateRegexPattern(cleanedNickName, nicknameRegex))
            {
                isValid =true;
            }
            return isValid;
        }

        public static bool validateDate(string date)
        {
            bool isValid = false;
            if(!string.IsNullOrWhiteSpace(date)&&validateRegexPattern(date, dateRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool validateCode(string codeLobby)
        {
            bool isValid = false;
            string codeCleaned = Regex.Replace(codeLobby.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(codeCleaned) && validateRegexPattern(codeCleaned, codeLobbyMatchRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool validateState(string state)
        {
            bool isValid = false;
            string stateCleaned = Regex.Replace(state.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(stateCleaned) && validateRegexPattern(stateCleaned, stateRegex))
            {
                isValid = true;
            }
            return isValid;
        }
    }
}
