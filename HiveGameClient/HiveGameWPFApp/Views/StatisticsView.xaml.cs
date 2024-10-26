using HiveGameWPFApp.Logic;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class StatisticsView : Page
    {
        // Colecciones de datos de ejemplo
        public ObservableCollection<PlayerStatistic> WorldStatisticsData { get; set; }
        public ObservableCollection<PlayerStatistic> PersonalStatisticsData { get; set; }

        public StatisticsView()
        {
            InitializeComponent();
            LoadSampleData();

            // Establece el contexto de datos
            dg_WorldStatistics.ItemsSource = WorldStatisticsData;
            dg_PersonalStatistics.ItemsSource = PersonalStatisticsData;
        }

        // Método para cargar datos de ejemplo
        private void LoadSampleData()
        {
            
            var players = new List<PlayerStatistic>
    {
                new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar1.png", Name = "Alice", Wins = 20, Losses = 5, TotalGames = 25 },
                new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar2.png", Name = "Bob", Wins = 15, Losses = 10, TotalGames = 25 },
                new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar3.png", Name = "Charlie", Wins = 18, Losses = 7, TotalGames = 25 },
                new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar4.png", Name = "Diana", Wins = 25, Losses = 0, TotalGames = 25 },
                new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar5.png", Name = "Eve", Wins = 10, Losses = 15, TotalGames = 25 }
            };

            
            var rankedPlayers = GetPlayersWithRank(players.OrderByDescending(p => p.Wins).ToList());

            
            WorldStatisticsData = new ObservableCollection<PlayerStatistic>(rankedPlayers);
            PersonalStatisticsData = new ObservableCollection<PlayerStatistic>
                {
                    new PlayerStatistic { ProfileImage = "/Images/Avatars/Avatar5.png", Name = "Alice", Wins = 20, Losses = 5, TotalGames = 25 }
                };
        }

        private void BtnPersonalStatistics_Click(object sender, RoutedEventArgs e)
        {
            stckp_PersonalStatistics.Visibility = Visibility.Visible;
            stckp_WorldStatistics.Visibility = Visibility.Collapsed;
        }

        private void BtnWorldStatistics_Click(object sender, RoutedEventArgs e)
        {
            stckp_PersonalStatistics.Visibility = Visibility.Collapsed;
            stckp_WorldStatistics.Visibility = Visibility.Visible;
        }
        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            GoToMainMenuView();
        }

        private void GoToMainMenuView()
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }
        private void DataGrid_LoadingRow(object sender, DataGridRowEventArgs e)
        {
           
            e.Row.Header = (e.Row.GetIndex() + 1).ToString();
        }
        public List<PlayerStatistic> GetPlayersWithRank(List<PlayerStatistic> players)
        {
            
            for (int i = 0; i < players.Count; i++)
            {
                players[i].Rank = i + 1;
            }
            return players;
        }

     
        
    }

    public class PlayerStatistic
    {
        public int Rank { get; set; }
        public string ProfileImage { get; set; }
        public string Name { get; set; }
        public int Wins { get; set; }
        public int Losses { get; set; }
        public int TotalGames { get; set; }
    }

}