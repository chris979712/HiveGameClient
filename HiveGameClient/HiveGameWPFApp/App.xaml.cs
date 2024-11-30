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
        private static bool _isMusicPlaying = HiveGameWPFApp.Properties.Settings.Default.Sound == "On";

        public static MediaPlayer MediaPlayer => _mediaPlayer;

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            string savedLanguage = HiveGameWPFApp.Properties.Settings.Default.Language;

            if (string.IsNullOrEmpty(savedLanguage))
            {
                savedLanguage = CultureInfo.CurrentCulture.Name.StartsWith("es") ? "es-MX" : "en-US";
                HiveGameWPFApp.Properties.Settings.Default.Language = savedLanguage;
                HiveGameWPFApp.Properties.Settings.Default.Save();
            }

            ChangeLanguage(savedLanguage);

            if (_isMusicPlaying && !string.IsNullOrEmpty(_currentMusicPath))
            {
                PlayMusic(_currentMusicPath);
            }
        }


        public static void ChangeLanguage(string cultureCode)
        {
            CultureInfo culture = new CultureInfo(cultureCode);
            Thread.CurrentThread.CurrentCulture = culture;
            Thread.CurrentThread.CurrentUICulture = culture;
            HiveGameWPFApp.Properties.Settings.Default.Reset();
            HiveGameWPFApp.Properties.Settings.Default.Language = cultureCode;
            HiveGameWPFApp.Properties.Settings.Default.Save();
        }


        public static void PlayMusic(string musicPath)
        {
            if (_currentMusicPath == musicPath || !_isMusicPlaying) return;

            _mediaPlayer.Stop();
            _mediaPlayer.Open(new Uri(musicPath, UriKind.RelativeOrAbsolute));
            _mediaPlayer.MediaEnded -= MediaPlayer_MediaEnded;
            _mediaPlayer.MediaEnded += MediaPlayer_MediaEnded;
            _mediaPlayer.Play();
            _currentMusicPath = musicPath;
            _mediaPlayer.Volume = 0.09;
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
                HiveGameWPFApp.Properties.Settings.Default.Sound = "Off";
                HiveGameWPFApp.Properties.Settings.Default.Save();
            }
            else
            {
                _mediaPlayer.Play();
                _isMusicPlaying = true;
                HiveGameWPFApp.Properties.Settings.Default.Sound = "On";
                HiveGameWPFApp.Properties.Settings.Default.Save();
            }

            
        }


        public static bool IsMusicPlaying => _isMusicPlaying;


    }
 }
