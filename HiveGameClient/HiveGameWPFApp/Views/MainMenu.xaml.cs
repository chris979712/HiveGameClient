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
        private MediaPlayer _mediaPlayer;
        private VideoDrawing _videoDrawing;
        private DrawingBrush _drawingBrush;
        private Image _selectedImage = null;
        public MainMenu()
        {
            InitializeComponent();
            Loaded += MainMenu_Loaded;
            Unloaded += MainMenu_Unloaded;
            App.PlayMusic("Audio/MainMenu.mp3");
            UpdateButtonVisibility();
            SetLanguageButtons();
            btn_EditCredentials.Visibility = Visibility.Collapsed;
            btn_EditProfile.Visibility = Visibility.Collapsed;
            lbl_Username.Content = UserProfileSingleton.username;
            img_ProfilePic.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
        }

        private void MainMenu_Loaded(object sender, RoutedEventArgs e)
        {
            _mediaPlayer = new MediaPlayer();
            _mediaPlayer.Open(new Uri("pack://siteoforigin:,,,/Video/VideoMenu.mp4"));

            _mediaPlayer.MediaEnded += MediaElement_MediaEnded;
            _videoDrawing = new VideoDrawing
            {
                Rect = new Rect(0, 0, videoCanvas.Width, videoCanvas.Height),
                Player = _mediaPlayer
            };

            _drawingBrush = new DrawingBrush(_videoDrawing);
            videoCanvas.Background = _drawingBrush;

            _mediaPlayer.Play();
        }

        private void MainMenu_Unloaded(object sender, RoutedEventArgs e)
        {
            if (_mediaPlayer != null)
            {
                _mediaPlayer.MediaEnded += MediaElement_MediaEnded;
                _mediaPlayer.Stop();
                _mediaPlayer.Close();
                _mediaPlayer = null;
            }
        }

        private void MediaElement_MediaEnded(object sender, EventArgs e)
        {
            if (_mediaPlayer != null)
            {
                _mediaPlayer.Position = TimeSpan.Zero;
                _mediaPlayer.Play();
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
                    int disconnectionResult = userSessionManagerClient.Disconnect(userSession, false);
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
            grd_Configuration.Visibility = Visibility.Collapsed;
        }

        private void BtnMyAccount_Click(object sender, RoutedEventArgs e)
        {
            btn_EditCredentials.Visibility = Visibility.Visible;
            btn_EditProfile.Visibility = Visibility.Visible;
            btn_JoinMatch.Visibility = Visibility.Collapsed;
            btn_CreateMatch.Visibility = Visibility.Collapsed;
            img_CreateMatch.Visibility = Visibility.Collapsed;
            img_JoinMatch.Visibility = Visibility.Collapsed;
            grd_Configuration.Visibility = Visibility.Collapsed;
        }

        private void ActivateMusic_Click(object sender, RoutedEventArgs e)
        {
            if (!App.IsMusicPlaying)
            {
                App.ToggleMusic();
                UpdateButtonVisibility();
            }

        }

        private void DeactivateMusic_Click(object sender, RoutedEventArgs e)
        {
            if (App.IsMusicPlaying)
            {
                App.ToggleMusic();
                UpdateButtonVisibility();
            }
        }

        private void UpdateButtonVisibility()
        {
            if (App.IsMusicPlaying)
            {
                img_SoundOn.Visibility = Visibility.Collapsed; 
                img_SoundOf.Visibility = Visibility.Visible; 
            }
            else
            {
                img_SoundOn.Visibility = Visibility.Visible; 
                img_SoundOf.Visibility = Visibility.Collapsed;
            }
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
            grd_Configuration.Visibility = Visibility.Visible;
            btn_JoinMatch.Visibility = Visibility.Collapsed;
            btn_CreateMatch.Visibility = Visibility.Collapsed;
            img_CreateMatch.Visibility = Visibility.Collapsed;
            img_JoinMatch.Visibility = Visibility.Collapsed;
            btn_EditCredentials.Visibility = Visibility.Collapsed;
            btn_EditProfile.Visibility = Visibility.Collapsed;
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


        private void SetLanguageButtons()
        {

            string currentLanguage = Properties.Settings.Default.Language;

            if (currentLanguage == "es-MX")
            {
                img_Mexico.IsEnabled = false;
                img_Mexico.Visibility = Visibility.Collapsed;
                img_EU.IsEnabled = true;
            }
            else
            {
                img_Mexico.IsEnabled = true;
                img_EU.IsEnabled = false;
                img_EU.Visibility = Visibility.Collapsed;
            }
        }

        private void ChangeLanguage_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Image image)
            {
                string newLanguage = image.Name == "img_Mexico" ? "es-MX" : "en-US";

                MessageBoxResult result = MessageBox.Show(
                   Properties.Resources.dialogMessageLanguagechange,
                   Properties.Resources.lbl_LanguageChange,
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Question
                );

                if (result == MessageBoxResult.Yes)
                {
                    App.ChangeLanguage(newLanguage);


                    System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
                    Application.Current.Shutdown();
                }
            }
        }


    }
}

