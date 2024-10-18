using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class RegisterView : Page
    {
        public RegisterView()
        {
            InitializeComponent();
            pwbPassword.PasswordChanged += PwbPassword_PasswordChanged;
            ConfirmPassword.PasswordChanged += ConfirmPassword_PasswordChanged;
        }
        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            GoToLoginView();
        }
        
        private void GoToLoginView()
        {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }
        private void BtnCreateAccount_Click(object sender, RoutedEventArgs e)
        {
            RestartColorTxtBox();
            Profile newProfileToAdd = new Profile();
            newProfileToAdd.username = txtbUsername.Text;
            newProfileToAdd.password = pwbPassword.Password;
            newProfileToAdd.email = txtEmail.Text;
            if (VerifyField())
            {
                if (ValidateSamePasswords())
                {
                    int insertionResult = AddUser(newProfileToAdd);
                    if (insertionResult == 1)
                    {
                        DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogAccountCreated);
                        ReturnToLogin();
                    }
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogMissmatchesPassword);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        public int AddUser(Profile profile)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int insertionResult = -1;
            bool additionResult = false;
            try
            {
                HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
                int validationExisted = userManagerClient.VerifyExistingAccesAccount(profile.email, profile.username);
                if (validationExisted == 0)
                {
                    Profile newProfileToAdd = AddDefaultInformationToProfile(profile);
                    insertionResult= userManagerClient.AddUser(newProfileToAdd);
                }
                else if (validationExisted >= 1)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogExistinAccount);
                }
                else if (validationExisted == -1)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
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
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            return insertionResult;
        }

        public Profile AddDefaultInformationToProfile(Profile profile)
        {
            Profile newProfile = new Profile(); 
            string hashedPassword = Hasher.hashToSHA1(profile.password);
            newProfile.email = profile.email;
            newProfile.username = profile.username;
            newProfile.password = hashedPassword;
            newProfile.nickname = profile.username;
            newProfile.imagePath = ProfileGenerator.RandomChooserAvatarIcon();
            newProfile.createdDate = DateTime.Now;
            newProfile.description = ProfileGenerator.RandomDescriptionGenerator();
            newProfile.reputation = 100;
            return newProfile;
        }

        public bool ValidateSamePasswords()
        {
            bool validation = false;
            if(txtPasswordDisplay.Text == txtConfirmPasswordDisplay.Text)
            {
                validation = true;
            }
            else
            {
                validation = false;
            }
            return validation;
        }

        public void RestartColorTxtBox()
        {
            txtbUsername.BorderBrush = Brushes.White;
            txtEmail.BorderBrush = Brushes.White;
            brPassword.BorderBrush = Brushes.White;
            brPassword.BorderBrush = Brushes.White;
        }
        public bool VerifyField()
        {
            bool username = Validator.validateUsername(txtbUsername.Text);
            bool email = Validator.validateEmail(txtEmail.Text);
            bool password = Validator.validatePassword(pwbPassword.Password);
            bool confirmPassword = Validator.validatePassword(pwbPassword.Password);
            if (!username)
            {
                txtbUsername.BorderBrush = Brushes.Red;
            }
            if (!email)
            {
                txtEmail.BorderBrush = Brushes.Red;
            }
            if (!password)
            {
                brPassword.BorderBrush = Brushes.Red;
            }
            if (!confirmPassword)
            {
                brPasswordConfirm.BorderBrush = Brushes.Red;
            }
            return username && password && email && confirmPassword;
        }

        private void PwbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(pwbPassword, tgbtnPasswordVisibility);
            UpdatePetImageBasedOnPassword();
        }

        private void ConfirmPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(ConfirmPassword, tgbtnConfirmPasswordVisibility);
            UpdatePetImageBasedOnPassword();
        }

        private void BtnPasswordVisibility_MouseDown(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(true, isPassword: true);
            ChangePetImage("/Images/Characters/Pet closing one eye.png");
        }

        private void BtnPasswordVisibility_MouseUp(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(false, isPassword: true);
        }

        private void BtnConfirmPasswordVisibility_MouseDown(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(true, isPassword: false);
            ChangePetImage("/Images/Characters/Pet closing one eye.png");
        }

        private void BtnConfirmPasswordVisibility_MouseUp(object sender, MouseButtonEventArgs e)
        {
            TogglePasswordVisibility(false, isPassword: false);
        }

        private void UpdatePasswordVisibilityIcon(PasswordBox passwordBox, ToggleButton toggleButton)
        {
            toggleButton.Visibility = !string.IsNullOrEmpty(passwordBox.Password)
                ? Visibility.Visible
                : Visibility.Collapsed;
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
        private void TogglePasswordVisibility(bool isVisible, bool isPassword)
        {
            if (isPassword)
            {
                brPassword.Visibility = isVisible ? Visibility.Collapsed : Visibility.Visible;
                brPasswordDisplay.Visibility = isVisible ? Visibility.Visible : Visibility.Collapsed;
                if (isVisible) txtPasswordDisplay.Text = pwbPassword.Password;
                else pwbPassword.Password = txtPasswordDisplay.Text;
            }
            else
            {
                ConfirmPassword.Visibility = isVisible ? Visibility.Collapsed : Visibility.Visible;
                brPasswordDisplayConfirm.Visibility = isVisible ? Visibility.Visible : Visibility.Collapsed;
                if (isVisible) txtConfirmPasswordDisplay.Text = ConfirmPassword.Password;
                else ConfirmPassword.Password = txtConfirmPasswordDisplay.Text;
            }
        }
        private void UpdatePetImageBasedOnPassword()
        {
            
            if (string.IsNullOrEmpty(pwbPassword.Password) && string.IsNullOrEmpty(ConfirmPassword.Password))
            {
                ChangePetImage("/Images/Characters/pet.png"); 
            }
            else
            {
                ChangePetImage("/Images/Characters/Pet closing eyes.png");
            }
        }

        private void ChangePetImage(string imagePath)
        {
            imgPet.Source = new BitmapImage(new Uri(imagePath, UriKind.Relative));
        }

        public void ReturnToLogin()
        {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }
    }
}
