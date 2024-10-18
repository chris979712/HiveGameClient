using HiveGameWPFApp.Logic;
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
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class MainMenu : Page
    {
        private MediaPlayer mediaPlayer;
        public MainMenu()
        {
            InitializeComponent();
            Loaded += MainMenu_Loaded;
            Unloaded += MainMenu_Unloaded;

        }
        private void MainMenu_Loaded(object sender, RoutedEventArgs e)
        {
            mediaElement.Play();
        }

        private void MainMenu_Unloaded(object sender, RoutedEventArgs e)
        {
            mediaElement.Pause();
        }

        private void MediaElement_MediaEnded(object sender, RoutedEventArgs e)
        {
            mediaElement.Position = TimeSpan.Zero;
            mediaElement.Play();
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            bool resultConfirmation = DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogExitMainMenu);
            if(resultConfirmation)
            {
                UserProfileSingleton.Instance.ResetSingleton();
                LoginView login = new LoginView();
                this.NavigationService.Navigate(login);
            }
        }

        private void BtnPlay_Click(object sender, RoutedEventArgs e)
        {
            LobbyView lobbyView = new LobbyView();
            this.NavigationService.Navigate(lobbyView);
        }

        private void BtnMyAccount_Click(object sender, RoutedEventArgs e)
        {
            EditProfileView editProfileView = new EditProfileView();
            this.NavigationService.Navigate(editProfileView);
        }

        private void BtnSettings_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
