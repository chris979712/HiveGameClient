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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp
{
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
        }

        private void IntroVideo_MediaEnded(object sender, RoutedEventArgs e)
        {
            NavigationFrame.Navigate(new Views.MainMenu());
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
            if (BackgroundMusicPlayer.Source != null)
            {
                BackgroundMusicPlayer.Stop();
            }

            BackgroundMusicPlayer.Source = new Uri(musicFilePath, UriKind.Relative);


            BackgroundMusicPlayer.Play();
        }

        private void StopBackgroundMusic()
        {
            if (BackgroundMusicPlayer.CanPause)
            {
                BackgroundMusicPlayer.Stop();
            }
        }

        private void BackgroundMusicPlayer_MediaEnded(object sender, RoutedEventArgs e)
        {
            
            BackgroundMusicPlayer.Position = TimeSpan.Zero;
            BackgroundMusicPlayer.Play();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
        }
    }
}