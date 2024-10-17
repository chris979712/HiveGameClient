using System;
using System.Collections.Generic;
using System.Linq;
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
        }

        private void PwbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(pwbPassword, tgbtnPasswordVisibility);
            UpdatePetImageBasedOnPassword(pwbPassword.Password);
        }

        private void ConfirmPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            UpdatePasswordVisibilityIcon(ConfirmPassword, tgbtnConfirmPasswordVisibility);
            UpdatePetImageBasedOnPassword(ConfirmPassword.Password);
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
        private void UpdatePetImageBasedOnPassword(string password)
        {
            if (!string.IsNullOrEmpty(password))
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
    }
}
