using System;
using System.Net;
using System.Security;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace HiveGameWPFApp.Views
{
    public partial class LoginView : Page
    {

        public LoginView()
        {
            InitializeComponent();
            pwbPassword.PasswordChanged += PwbPassword_PasswordChanged; 
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
    }
}