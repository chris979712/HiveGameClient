using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace HiveGameWPFApp
{
    public partial class App : Application
    {

        private static readonly MediaPlayer _mediaPlayer = new MediaPlayer();
        private static string _currentMusicPath = string.Empty;
        private static bool _isMusicPlaying = true;

        public static MediaPlayer MediaPlayer => _mediaPlayer;

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            string systemLanguage = CultureInfo.CurrentCulture.Name;

            if (systemLanguage.StartsWith("es"))
            {
                ChangeLanguage("es-MX");
            }
            else
            {
                ChangeLanguage("en-US");
            }
        }

        public static void ChangeLanguage(string cultureCode)
        {
            CultureInfo culture = new CultureInfo(cultureCode);
            Thread.CurrentThread.CurrentCulture = culture;
            Thread.CurrentThread.CurrentUICulture = culture;

            HiveGameWPFApp.Properties.Settings.Default.Language = cultureCode;
            HiveGameWPFApp.Properties.Settings.Default.Save();
        }


        public static void PlayMusic(string musicPath)
        {
            if (_currentMusicPath == musicPath) return;

            _mediaPlayer.Stop();
            _mediaPlayer.Open(new Uri(musicPath, UriKind.RelativeOrAbsolute));
            _mediaPlayer.MediaEnded -= MediaPlayer_MediaEnded;
            _mediaPlayer.MediaEnded += MediaPlayer_MediaEnded;
            _mediaPlayer.Play();
            _currentMusicPath = musicPath;
            _mediaPlayer.Volume = 0.09;
            _isMusicPlaying = true;
        }

        private static void MediaPlayer_MediaEnded(object sender, EventArgs e)
        {
            _mediaPlayer.Position = TimeSpan.Zero;
            _mediaPlayer.Play();
        }

        public static void ToggleMusic()
        {
            if (_isMusicPlaying)
            {
                _mediaPlayer.Pause();
                _isMusicPlaying = false;
            }
            else
            {
                _mediaPlayer.Play();
                _isMusicPlaying = true;
            }
        }

        public static bool IsMusicPlaying => _isMusicPlaying;
    }
 }
