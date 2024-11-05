using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace HiveGameWPFApp
{
    public partial class App : Application
    {
        public static MediaPlayer MediaPlayer = new MediaPlayer();
        private static string currentMusicPath = string.Empty;
        private static bool isMusicPlaying = true;
        public static void PlayMusic(string musicPath)
        {
            if (currentMusicPath == musicPath) return;

            MediaPlayer.Stop();
            MediaPlayer.Open(new Uri(musicPath, UriKind.RelativeOrAbsolute));
            MediaPlayer.MediaEnded -= MediaPlayer_MediaEnded;
            MediaPlayer.MediaEnded += MediaPlayer_MediaEnded;
            MediaPlayer.Play();
            currentMusicPath = musicPath;
            MediaPlayer.Volume = 0.09;
            isMusicPlaying = true;
        }

        private static void MediaPlayer_MediaEnded(object sender, EventArgs e)
        {
            MediaPlayer.Position = TimeSpan.Zero; 
            MediaPlayer.Play();
        }

        public static void ToggleMusic()
        {
            if (isMusicPlaying)
            {
                MediaPlayer.Pause();
                isMusicPlaying = false;
            }
            else
            {
                MediaPlayer.Play();
                isMusicPlaying = true;
            }
        }

        public static bool IsMusicPlaying => isMusicPlaying;
    }
}
