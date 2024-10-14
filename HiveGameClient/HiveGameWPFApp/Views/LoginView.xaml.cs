using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using System;
using System.Net;
using System.Security;
using System.ServiceModel;
using System.Web.SessionState;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace HiveGameWPFApp.Views
{
    public partial class LoginView : Page
    {
        private MediaPlayer mediaPlayer;
        public LoginView()
        {
            InitializeComponent();
            pwbPassword.PasswordChanged += PwbPassword_PasswordChanged;
            mediaPlayer = new MediaPlayer();
            mediaPlayer.Open(new Uri("pack://siteoforigin:,,,/Audio/Lobby.mp3"));
            mediaPlayer.MediaEnded += MediaPlayer_MediaEnded;
            mediaPlayer.Play();
        }
        private void MediaPlayer_MediaEnded(object sender, EventArgs e)
        {
            mediaPlayer.Position = TimeSpan.Zero; // Reinicia el audio
            mediaPlayer.Play(); // Reproduce de nuevo
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            txtbUsername.BorderBrush = new SolidColorBrush(Colors.White);
            brPassword.BorderBrush = new SolidColorBrush(Colors.White);
            Profile userAccount = new Profile();
            userAccount.username = txtbUsername.Text;
            userAccount.password = pwbPassword.Password;
            if (verifyFields())
            {
                if (validateCredentials(userAccount))
                {
                    DisplayMainMenuView();
                }
            }
            else
            {

            }
        }

        public bool verifyFields()
        {
            bool passwordValidation = Validator.validatePassword(pwbPassword.Password);
            bool usernameValidation = Validator.validateUsername(txtbUsername.Text);
            if (!passwordValidation)
            {
                brPassword.BorderBrush = Brushes.Red;
            }
            if (!usernameValidation)
            {
                txtbUsername.BorderBrush = Brushes.Red;
            }
            return passwordValidation&&passwordValidation;
        }

        public bool validateCredentials(Profile profile)
        {
            bool validateResult = false;
            LoggerManager logger = new LoggerManager(this.GetType());
            int validationResult = 0;
            try
            {
                string hashedPassword = Hasher.hashToSHA1(profile.password);
                string username = profile.username;
                IUserManager userManager = new HiveProxy.UserManagerClient();
                validationResult = userManager.VerifyCredentials(username, hashedPassword);
            }
            catch(EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
            }catch(TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
            }catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }
            switch (validationResult)
            {
                case -1:
                    validateResult = false;
                    break;
                case 1:
                    validateResult = true;
                    obtainSingletonData(profile);
                    break;
                default:
                    break;
            }
            return validateResult;
        }

        public void obtainSingletonData(Profile profile)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                IUserManager userManager = new UserManagerClient();
                string hashedPassword = Hasher.hashToSHA1(profile.password);
                Profile userAccount = userManager.GetUserProfile(profile.username, hashedPassword);
                if(userAccount != null)
                {
                    UserProfileSingleton.Instance.CreateInstance(userAccount);
                }
            }catch(EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
            }catch(TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
            }catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }
        }

        private void BtnLogin_Guest(object sender, RoutedEventArgs e)
        {
        }

        private void BtnLogin_Register(object sender, RoutedEventArgs e)
        {
        }

        private void BtnRegister_Click(object sender, MouseButtonEventArgs e)
        {
            
        }


        private void BtnPasswordVisibility_MouseDown(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(true);
            ChangePetImage("/Images/Characters/Pet closing one eye.png"); 
        }

        private void BtnPasswordVisibility_MouseUp(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(false);
            UpdatePetImageBasedOnPassword(); 
        }

        private void PwbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePetImageBasedOnPassword();
            UpdatePasswordVisibilityIcon(); 
        }

        private void TogglePasswordVisibility(bool isVisible)
        {
            if (isVisible)
            {
                brPassword.Visibility = Visibility.Collapsed;
                brPasswordDisplay.Visibility = Visibility.Visible;
                txtPasswordDisplay.Text = pwbPassword.Password;
            }
            else
            {
                brPassword.Visibility = Visibility.Visible;
                brPasswordDisplay.Visibility = Visibility.Collapsed;
                pwbPassword.Password = txtPasswordDisplay.Text;
            }
        }
        private void UpdatePasswordVisibilityIcon()
        {
            if (pwbPassword.Password.Length > 0)
            {
                tgbtnPasswordVisibility.Visibility = Visibility.Visible; 
            }
            else
            {
                tgbtnPasswordVisibility.Visibility = Visibility.Collapsed; 
            }
        }
        private void UpdatePetImageBasedOnPassword()
        {
            if (pwbPassword.Password.Length > 0)
            {
                ChangePetImage("/Images/Characters/Pet closing eyes.png");
            }
            else
            {
                ChangePetImage("/Images/Characters/pet.png");
            }
        }

        private void ChangePetImage(string imagePath)
        {
            imgPet.Source = new BitmapImage(new Uri(imagePath, UriKind.Relative));
        }

        private void DisplayMainMenuView()
        {
            LobbyView lobbyView = new LobbyView();
            this.NavigationService.Navigate(lobbyView);
        }

        private void BtnGuest_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnRegister_Click(object sender, RoutedEventArgs e)
        {

        }

    }
}