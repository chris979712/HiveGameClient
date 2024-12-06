using System;
using System.Linq;
using System.Text;
using System.Windows;
using System.ServiceModel;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using HiveGameWPFApp.Logic;
using System.Windows.Shapes;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Documents;
using HiveGameWPFApp.HiveProxy;
using System.Windows.Navigation;
using System.Collections.Generic;
using System.Windows.Media.Imaging;
using System.Windows.Controls.Primitives;

namespace HiveGameWPFApp.Views
{
    public partial class RegisterView : Page
    {
        public RegisterView()
        {
            InitializeComponent();
            pwb_Password.PasswordChanged += PwbPassword_PasswordChanged;
            pwb_ConfirmPassword.PasswordChanged += ConfirmPassword_PasswordChanged;
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
            Profile newProfileToAdd = new Profile
            {
                username = txtb_Username.Text,
                password = pwb_Password.Password,
                email = txtb_Email.Text
            };

            if (VerifyField())
            {
                if (ValidateSamePasswords())
                {
                    int insertionResult = AddUser(newProfileToAdd);
                    if (insertionResult == 1)
                    {
                        DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogAccountCreated);
                        GoToLoginView();
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

            try
            {
                HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
                int validationExisted = userManagerClient.VerifyExistingAccesAccount(profile.email, profile.username);

                if (validationExisted == 0)
                {
                    Profile newProfileToAdd = AddDefaultInformationToProfile(profile);
                    insertionResult = userManagerClient.AddUser(newProfileToAdd);
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
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }

            return insertionResult;
        }

        public Profile AddDefaultInformationToProfile(Profile profile)
        {
            string hashedPassword = Hasher.hashToSHA2(profile.password);

            Profile newProfile = new Profile
            {
                email = profile.email,
                username = profile.username,
                password = hashedPassword,
                nickname = profile.username,
                imagePath = ProfileGenerator.RandomChooserAvatarIcon(),
                createdDate = DateTime.Now,
                description = ProfileGenerator.RandomDescriptionGenerator(),
                reputation = 100
            };

            return newProfile;
        }

        public bool ValidateSamePasswords()
        {
            return txtb_PasswordDisplay.Text == txtb_ConfirmPasswordDisplay.Text;
        }

        public void RestartColorTxtBox()
        {
            txtb_Username.BorderBrush = Brushes.White;
            txtb_Email.BorderBrush = Brushes.White;
            brd_Password.BorderBrush = Brushes.White;
            brd_PasswordConfirm.BorderBrush = Brushes.White;
        }

        public bool VerifyField()
        {
            bool username = Validator.ValidateUsername(txtb_Username.Text);
            bool email = Validator.ValidateEmail(txtb_Email.Text);
            bool password = Validator.ValidatePassword(pwb_Password.Password);
            bool confirmPassword = Validator.ValidatePassword(pwb_Password.Password);

            if (!username) txtb_Username.BorderBrush = Brushes.Red;
            if (!email) txtb_Email.BorderBrush = Brushes.Red;
            if (!password) brd_Password.BorderBrush = Brushes.Red;
            if (!confirmPassword) brd_PasswordConfirm.BorderBrush = Brushes.Red;

            return username && password && email && confirmPassword;
        }

        private void PwbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(pwb_Password, tgbtn_PasswordVisibility);
            UpdatePetImageBasedOnPassword();
        }

        private void ConfirmPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(pwb_ConfirmPassword, tgbtn_ConfirmPasswordVisibility);
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
            toggleButton.Visibility = !string.IsNullOrEmpty(passwordBox.Password) ? Visibility.Visible : Visibility.Collapsed;
        }

        private void TogglePasswordVisibility(bool isVisible, bool isPassword)
        {
            if (isPassword)
            {
                ToggleVisibility(isVisible, brd_Password, brd_PasswordDisplay, txtb_PasswordDisplay, pwb_Password);
            }
            else
            {
                ToggleVisibility(isVisible, pwb_ConfirmPassword, brd_PasswordDisplayConfirm, txtb_ConfirmPasswordDisplay, pwb_ConfirmPassword);
            }
        }

        private void ToggleVisibility(bool isVisible, UIElement passwordElement, UIElement displayElement, TextBox displayTextBox, PasswordBox passwordBox)
        {
            passwordElement.Visibility = isVisible ? Visibility.Collapsed : Visibility.Visible;
            displayElement.Visibility = isVisible ? Visibility.Visible : Visibility.Collapsed;

            if (isVisible)
                displayTextBox.Text = passwordBox.Password;
            else
                passwordBox.Password = displayTextBox.Text;
        }


        private void UpdatePetImageBasedOnPassword()
        {
            if (string.IsNullOrEmpty(pwb_Password.Password) && string.IsNullOrEmpty(pwb_ConfirmPassword.Password))
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
            img_Pet.Source = new BitmapImage(new Uri(imagePath, UriKind.Relative));
        }


    }
}
