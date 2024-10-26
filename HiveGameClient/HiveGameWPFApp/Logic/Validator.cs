using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace HiveGameWPFApp.Logic
{
    public static class Validator
    {

        private static Regex passwordRegex = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':""\\|,.<>\/?]).{8,}$",RegexOptions.None,TimeSpan.FromMilliseconds(1000));
        private static Regex usernameRegex = new Regex("^[A-Za-zñÑ0-9_]{5,50}$",RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex nicknameRegex = new Regex("^[A-Za-zñÑ0-9_]{5,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex numbersRegrex = new Regex("^[0-9]+$",RegexOptions.None, TimeSpan.FromMilliseconds(500));
        private static Regex dateRegex = new Regex(@"^(19|20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex codeLobbyMatchRegex = new Regex(@"^[0-9]{6}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex stateRegex = new Regex(@"^[A-Z][a-zA-Z]{4,15}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex textRegex = new Regex(@"^[A-Za-zñÑ'0-9\s\W]*$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex emailRegex = new Regex(@"^[a-zA-Z0-9](?!.*[.-]{2})[a-zA-Z0-9.-]*[a-zA-Z0-9]@[a-zA-Z0-9](?!.*[.-]{2})[a-zA-Z0-9.-]*\.[a-zA-Z]{2,}$",RegexOptions.None,TimeSpan.FromMilliseconds(1000));


        public static bool ValidateRegexPattern(string data, Regex regex)
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

        public static bool ValidateDescription(string description)
        {
            bool isValid = false;
            string cleanedDescription = Regex.Replace(description.Trim(), @"\s+", "");
            if (!string.IsNullOrEmpty(cleanedDescription) && ValidateRegexPattern(cleanedDescription,textRegex))
            {
                isValid = true;
            }
            return isValid;
        }
       
        public static bool ValidatePassword(string password) 
        {
            bool isValid = false;
            string cleanedPassword = Regex.Replace(password.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedPassword) && ValidateRegexPattern(cleanedPassword, passwordRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool ValidateUsername(string username)
        {
            bool isValid = false;
            string cleanedUsername = Regex.Replace(username.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedUsername) && ValidateRegexPattern(cleanedUsername, usernameRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool ValidateEmail(string email)
        {
            bool isValid = false;
            string cleanedEmail = Regex.Replace(email.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedEmail)&&cleanedEmail.Length<254&& ValidateRegexPattern(cleanedEmail, emailRegex))
            {
                isValid=true;
            }
            return isValid;
        }

        public static bool ValidateNickName(string nickName)
        {
            bool isValid = false;
            string cleanedNickName = Regex.Replace(nickName.Trim(), @"\s+", "");
            if(!string.IsNullOrWhiteSpace(cleanedNickName) && ValidateRegexPattern(cleanedNickName, nicknameRegex))
            {
                isValid =true;
            }
            return isValid;
        }

        public static bool ValidateDate(string date)
        {
            bool isValid = false;
            if(!string.IsNullOrWhiteSpace(date)&& ValidateRegexPattern(date, dateRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool ValidateCode(string codeLobby)
        {
            bool isValid = false;
            string codeCleaned = Regex.Replace(codeLobby.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(codeCleaned) && ValidateRegexPattern(codeCleaned, codeLobbyMatchRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool ValidateState(string state)
        {
            bool isValid = false;
            string stateCleaned = Regex.Replace(state.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(stateCleaned) && ValidateRegexPattern(stateCleaned, stateRegex))
            {
                isValid = true;
            }
            return isValid;
        }
    }
}
