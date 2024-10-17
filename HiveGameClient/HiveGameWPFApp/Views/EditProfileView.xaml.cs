using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{

    public partial class EditProfileView : Page
    {
        public EditProfileView()
        {
            InitializeComponent();
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            GoToMainMenuView();
        }

        private void GoToMainMenuView()
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }
        private void ChangeProfilePic_Click(object sender, RoutedEventArgs e)
        {
            
            profilePicPopup.IsOpen = true;
        }

        private void lstProfilePics_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
            if (lstProfilePics.SelectedItem is ListBoxItem selectedItem)
            {
                string selectedImage = selectedItem.Tag.ToString();
                imgProfilePic.Source = new BitmapImage(new Uri(selectedImage, UriKind.Relative));

               
                profilePicPopup.IsOpen = false;
            }
        }

        private void BtnConfirm_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
