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
            mediaPlayer = new MediaPlayer();
            mediaPlayer.Open(new Uri("pack://siteoforigin:,,,/Video/.mp3"));
            mediaPlayer.Volume = 0.05;
            mediaPlayer.MediaEnded += MediaPlayer_MediaEnded;
            mediaPlayer.Play();
        }

        private void MediaPlayer_MediaEnded(object sender, EventArgs e)
        {
            mediaPlayer.Position = TimeSpan.Zero; // Reinicia el audio
            mediaPlayer.Play(); // Reproduce de nuevo
        }
    }
}
