using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ServiceModel;
using System.Windows;
using HiveGameWPFApp.HiveProxy;

namespace HiveGameWPFApp
{
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
            this.Closing += MainWindowClosing;
        }

        private void IntroVideo_MediaEnded(object sender, RoutedEventArgs e)
        {

            NavigationFrame.Navigate(new Views.LoginView());

        }

        private void NavigationFrame_Navigating(object sender, NavigatingCancelEventArgs e)
        {
            var fadeOutAnimation = new DoubleAnimation(1, 0, TimeSpan.FromSeconds(1.5));
            NavigationFrame.BeginAnimation(Frame.OpacityProperty, fadeOutAnimation);
        }

        private void NavigationFrame_Navigated(object sender, NavigationEventArgs e)
        {
            var fadeInAnimation = new DoubleAnimation(0, 1, TimeSpan.FromSeconds(2.5));
            NavigationFrame.BeginAnimation(Frame.OpacityProperty, fadeInAnimation);
            string pageName = e.Content.GetType().Name;
            switch (pageName)
            {
                case "LoginView":
                    PlayBackgroundMusic("Audio/login.mp3");
                    break;
                case "LobbyView":
                    PlayBackgroundMusic("Audio/lobby.mp3");
                    break;
                case "MainMenu":
                    PlayBackgroundMusic("Audio/MainMenu.mp3");
                    break;
                default:
                    StopBackgroundMusic();
                    break;
            }
        }
        private void PlayBackgroundMusic(string musicFilePath)
        {
            if (me_BackgroundMusicPlayer.Source != null)
            {
                me_BackgroundMusicPlayer.Stop();
            }

            me_BackgroundMusicPlayer.Source = new Uri(musicFilePath, UriKind.Relative);
            me_BackgroundMusicPlayer.Play();
        }

        private void StopBackgroundMusic()
        {
            if (me_BackgroundMusicPlayer.CanPause)
            {
                me_BackgroundMusicPlayer.Stop();
            }
        }

        private void BackgroundMusicPlayer_MediaEnded(object sender, RoutedEventArgs e)
        {
            
            me_BackgroundMusicPlayer.Position = TimeSpan.Zero;
            me_BackgroundMusicPlayer.Play();
        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSessionManagerClient sessionManager = new UserSessionManagerClient();
                sessionManager.Disconnect(UserProfileSingleton.username);

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

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
        }
    }
}