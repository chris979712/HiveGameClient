using System;
using System.Net;
using System.Windows;
using System.Security;
using Microsoft.Win32;
using System.ServiceModel;
using System.Windows.Input;
using System.Windows.Media;
using HiveGameWPFApp.Logic;
using System.Windows.Controls;
using System.Web.SessionState;
using HiveGameWPFApp.HiveProxy;
using System.Windows.Media.Imaging;
using log4net.Repository.Hierarchy;
using System.Threading.Tasks;

namespace HiveGameWPFApp.Views
{
    public partial class LoginView : Page
    {
        public LoginView()
        {
            InitializeComponent();
            pwb_Password.PasswordChanged += PwbPassword_PasswordChanged;
            if (App.IsMusicPlaying)
            {
                App.PlayMusic("Audio/login.mp3");
            }

        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            txtb_Username.BorderBrush = new SolidColorBrush(Colors.White);
            brd_Password.BorderBrush = new SolidColorBrush(Colors.White);

            Profile userAccount = new Profile
            {
                username = txtb_Username.Text,
                password = pwb_Password.Password
            };

            if (verifyFields())
            {
                int validateCredentials = ValidateCredentials(userAccount);

                if (validateCredentials == 1)
                {
                    ValidateExistingUserSession();
                }
                else if (validateCredentials == 0)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        public bool verifyFields()
        {
            bool passwordValidation = Validator.ValidatePassword(pwb_Password.Password);
            bool usernameValidation = Validator.ValidateUsername(txtb_Username.Text);

            if (!passwordValidation)
            {
                brd_Password.BorderBrush = Brushes.Red;
            }
            if (!usernameValidation)
            {
                txtb_Username.BorderBrush = Brushes.Red;
            }

            return passwordValidation && usernameValidation;
        }

        public void ValidateExistingUserSession()
        {
            bool existingSessionValidation = false;
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserSessionManagerClient userSessionManagerClient = new UserSessionManagerClient();
            try
            {
                UserSession session = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount
                };
                existingSessionValidation = userSessionManagerClient.VerifyConnectivity(session);
                if (existingSessionValidation)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogExistingSession);
                }
                else
                {
                    userSessionManagerClient.ConnectToGame(session);
                    DisplayMainMenuView();
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
        }

        public int ValidateCredentials(Profile profile)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int validationResult = -2;

            try
            {
                string hashedPassword = Hasher.hashToSHA1(profile.password);
                string username = profile.username;
                IUserManager userManager = new HiveProxy.UserManagerClient();
                validationResult = userManager.VerifyPasswordCredentials(username, hashedPassword);
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }

            switch (validationResult)
            {
                case -1:
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                    break;
                case 1:
                    obtainSingletonData(profile);
                    break;
            }

            return validationResult;
        }

        public void obtainSingletonData(Profile profile)
        {
            LoggerManager logger = new LoggerManager(this.GetType());

            try
            {
                IUserManager userManager = new UserManagerClient();
                string hashedPassword = Hasher.hashToSHA1(profile.password);
                Profile userAccount = userManager.GetUserProfile(profile.username, hashedPassword);

                if (userAccount != null)
                {
                    UserProfileSingleton.Instance.CreateInstance(userAccount);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
        }

        private int GenerateGuestProfile()
        {
            int creationResult = Constants.ERROR_OPERATION;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
                string randomUsername = ProfileGenerator.RandomChooserUsername();
                UserSession guestSession = new UserSession()
                {
                    username = randomUsername,
                    idAccount = Constants.DEFAULT_GUEST_ID
                };
                while (userSessionManagerClient.VerifyConnectivity(guestSession))
                {
                    guestSession.username = ProfileGenerator.RandomChooserUsername();
                }
                Profile profileGuest = new Profile()
                {
                    idAccesAccount = Constants.DEFAULT_GUEST_ID,
                    idProfile = Constants.DEFAULT_GUEST_ID,
                    username = randomUsername,
                    nickname = randomUsername,
                    description = ProfileGenerator.RandomDescriptionGenerator(),
                    imagePath = ProfileGenerator.RandomChooserAvatarIcon(),
                    createdDate = DateTime.Now,
                };
                UserProfileSingleton.Instance.CreateInstance(profileGuest);
                userSessionManagerClient.ConnectToGame(guestSession);
                creationResult = Constants.SUCCES_OPERATION;
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogError(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogError(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            return creationResult;
        }

        private void BtnGuest_Click(object sender, RoutedEventArgs e)
        {
            int creationResult = GenerateGuestProfile();
            if(creationResult != Constants.ERROR_OPERATION)
            {
                GameCodeView gameCodeView = new GameCodeView();
                this.NavigationService.Navigate(gameCodeView);
            }
        }

        private void BtnRegister_Click(object sender, RoutedEventArgs e)
        {
            RegisterView registerView = new RegisterView();
            this.NavigationService.Navigate(registerView);
        }

        private void BtnRecoverPassword_Click(object sender, MouseButtonEventArgs e)
        {
            VerifyEmailAndUsername verifyEmailAndUsername = new VerifyEmailAndUsername();
            this.NavigationService.Navigate(verifyEmailAndUsername);
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
                brd_Password.Visibility = Visibility.Collapsed;
                brd_PasswordDisplay.Visibility = Visibility.Visible;
                txtb_PasswordDisplay.Text = pwb_Password.Password;
            }
            else
            {
                brd_Password.Visibility = Visibility.Visible;
                brd_PasswordDisplay.Visibility = Visibility.Collapsed;
                pwb_Password.Password = txtb_PasswordDisplay.Text;
            }
        }

        private void UpdatePasswordVisibilityIcon()
        {
            tgbtn_PasswordVisibility.Visibility = pwb_Password.Password.Length > 0
                ? Visibility.Visible
                : Visibility.Collapsed;
        }

        private void UpdatePetImageBasedOnPassword()
        {
            ChangePetImage(pwb_Password.Password.Length > 0
                ? "/Images/Characters/Pet closing eyes.png"
                : "/Images/Characters/pet.png");
        }

        private void ChangePetImage(string imagePath)
        {
            img_Pet.Source = new BitmapImage(new Uri(imagePath, UriKind.Relative));
        }

        private void DisplayMainMenuView()
        {
            MainMenu mainWindow = new MainMenu();
            this.NavigationService.Navigate(mainWindow);
        }
    }
}
