using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using log4net.Util;
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
        private VideoDrawing videoDrawing;
        private DrawingBrush drawingBrush;
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
            mediaPlayer = new MediaPlayer();
            mediaPlayer.Open(new Uri("pack://siteoforigin:,,,/Video/VideoMenu.mp4"));

            mediaPlayer.MediaEnded += MediaElement_MediaEnded;
            videoDrawing = new VideoDrawing
            {
                Rect = new Rect(0, 0, videoCanvas.Width, videoCanvas.Height),
                Player = mediaPlayer
            };

            drawingBrush = new DrawingBrush(videoDrawing);
            videoCanvas.Background = drawingBrush;

            mediaPlayer.Play();
        }

        private void MainMenu_Unloaded(object sender, RoutedEventArgs e)
        {
            if (mediaPlayer != null)
            {
                mediaPlayer.MediaEnded += MediaElement_MediaEnded;
                mediaPlayer.Stop();
                mediaPlayer.Close();
                mediaPlayer = null;
            }
        }

        private void MediaElement_MediaEnded(object sender, EventArgs e)
        {
            if (mediaPlayer != null)
            {
                mediaPlayer.Position = TimeSpan.Zero;
                mediaPlayer.Play();
            }
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            bool resultConfirmation = DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogExitMainMenu);
            LoggerManager logger = new LoggerManager(this.GetType());
            if (resultConfirmation)
            {
                try
                {
                    HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
                    UserSession userSession = new UserSession()
                    {
                        username = UserProfileSingleton.username,
                        idAccount = UserProfileSingleton.idAccount
                    };
                    int disconnectionResult = userSessionManagerClient.Disconnect(userSession);
                    if(disconnectionResult == Constants.SUCCES_OPERATION)
                    {
                        UserProfileSingleton.Instance.ResetSingleton();
                        LoginView login = new LoginView();
                        this.NavigationService.Navigate(login);
                    }
                    else if(disconnectionResult == Constants.NO_DATA_MATCHES)
                    {
                        DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogCouldntFindUserSession);
                    }
                    else
                    {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorInDisconnection);
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
        }

        private void BtnPlay_Click(object sender, RoutedEventArgs e)
        {
            btn_JoinMatch.Visibility = Visibility.Visible;
            btn_CreateMatch.Visibility = Visibility.Visible;
            img_CreateMatch.Visibility = Visibility.Visible;
            img_JoinMatch.Visibility = Visibility.Visible;
            btn_EditCredentials.Visibility = Visibility.Collapsed;
            btn_EditProfile.Visibility = Visibility.Collapsed;
        }

        private void BtnMyAccount_Click(object sender, RoutedEventArgs e)
        {
            btn_EditCredentials.Visibility = Visibility.Visible;
            btn_EditProfile.Visibility = Visibility.Visible;
            btn_JoinMatch.Visibility = Visibility.Collapsed;
            btn_CreateMatch.Visibility = Visibility.Collapsed;
            img_CreateMatch.Visibility = Visibility.Collapsed;
            img_JoinMatch.Visibility = Visibility.Collapsed;
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

        private void CreateMatchLobby()
        {
            HiveProxy.MatchCreatorManagerClient matchCreator = new HiveProxy.MatchCreatorManagerClient();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                string code = matchCreator.GenerateLobbyCode(UserProfileSingleton.email);
                MatchCreator matchCreatorUser = new MatchCreator()
                {
                    codeMatch = code,
                    idCreatorAccount = UserProfileSingleton.idAccount,
                    dateMatch = DateTime.Now,
                    stateMatch = "Lobby"
                };
                int resultInsertion = matchCreator.CreateMatch(matchCreatorUser);
                if (resultInsertion == Constants.SUCCES_OPERATION)
                {
                    MatchSingleton.Instance.CreateInstance(code);
                    LobbyView lobbyView = new LobbyView();
                    this.NavigationService.Navigate(lobbyView);
                }
                else if (resultInsertion == Constants.ERROR_OPERATION)
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

        private void BtnCreateMatch_Click(object sender, RoutedEventArgs e)
        {
            if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogConfirmationMatchCreation))
            {
                CreateMatchLobby();
            }
        }

        private void BtnJoinMatch_Click(object sender, RoutedEventArgs e)
        { 
            GameCodeView gameCodeView = new GameCodeView();
            this.NavigationService.Navigate(gameCodeView);
        }

        private void BtnStatistics_Click(object sender, RoutedEventArgs e)
        {
            StatisticsView statisticsView = new StatisticsView();
            this.NavigationService.Navigate(statisticsView);
        }

    }
}

