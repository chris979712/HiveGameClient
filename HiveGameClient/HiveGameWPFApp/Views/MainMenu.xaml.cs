using HiveGameWPFApp.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
            btn_EditCredentials.Visibility = Visibility.Collapsed;
            btn_EditProfile.Visibility = Visibility.Collapsed;
            lbl_Username.Content = UserProfileSingleton.username;
            img_ProfilePic.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
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
            btn_EditCredentials.Visibility = Visibility.Visible;
            btn_EditProfile.Visibility = Visibility.Visible;
        }

        private void BtnFriends_Click(object sender, RoutedEventArgs e)
        {
            FriendsListView friendsListView = new FriendsListView();
            this.NavigationService.Navigate(friendsListView);
        }

        private void BtnEditCredentials_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.EmailVerificationManagerClient emailVerificationManager = new HiveProxy.EmailVerificationManagerClient();
            try
            {
                int resultEmailSend = emailVerificationManager.SendVerificationEmail(UserProfileSingleton.email);
                if (resultEmailSend == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogEmailVerificationMessage);
                    EditCredentialsView editCredentialsView = new EditCredentialsView();
                    this.NavigationService.Navigate(editCredentialsView);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSendEmail);
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

        private void BtnEditProfile_Click(object sender, RoutedEventArgs e)
        {
            EditProfileView editProfileView = new EditProfileView();
            this.NavigationService.Navigate(editProfileView);
        }

        private void BtnSettings_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
