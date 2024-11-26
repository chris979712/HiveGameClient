using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class StatisticsView : Page
    {

        public ObservableCollection<PlayerStatistic> WorldStatisticsData { get; set; }
        public ObservableCollection<PlayerStatistic> PersonalStatisticsData { get; set; }

        public StatisticsView()
        {
            InitializeComponent();
            LoadSampleData();

        }

        private void LoadSampleData()
        {}

        private void BtnPersonalStatistics_Click(object sender, RoutedEventArgs e)
        {
            stckp_PersonalStatistics.Visibility = Visibility.Visible;
            stckp_WorldStatistics.Visibility = Visibility.Collapsed;
            GetPersonalLeaderBoard();

        }

        private void GetPersonalLeaderBoard()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.LeaderBoardManagerClient leaderBoardManagerClient = new HiveProxy.LeaderBoardManagerClient();
            try
            {
                LeaderBoardPlayer leaderBoardPlayer = leaderBoardManagerClient.GetPersonalLeaderBoard(UserProfileSingleton.idAccount);
                if(leaderBoardPlayer.idAccount == Constants.NO_DATA_MATCHES)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNoPersonalLeaderboard);
                }
                else if(leaderBoardPlayer.idAccount == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }
                else
                {
                    PersonalStatisticsData = new ObservableCollection<PlayerStatistic>
                    {
                        new PlayerStatistic
                        {
                            ProfileImage = UserProfileSingleton.imageRoute,
                            Name = leaderBoardPlayer.username,
                            Wins = leaderBoardPlayer.totalWonMatches,
                            Losses = leaderBoardPlayer.totalLostMatches,
                            TotalGames = leaderBoardPlayer.totalMatches
                        }
                    };
                    dg_PersonalStatistics.ItemsSource = PersonalStatisticsData;
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

        private void BtnWorldStatistics_Click(object sender, RoutedEventArgs e)
        {
            stckp_PersonalStatistics.Visibility = Visibility.Collapsed;
            stckp_WorldStatistics.Visibility = Visibility.Visible;
            GetGlobalLeaderboards();
        }

        private void GetGlobalLeaderboards()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.LeaderBoardManagerClient leaderBoardManagerClient = new HiveProxy.LeaderBoardManagerClient();
            try
            {
                LeaderBoardPlayer[] leaderBoards = leaderBoardManagerClient.GetAllPlayersLeaderboards();
                List<LeaderBoardPlayer> leaderBoardsSorted = leaderBoards.OrderByDescending(leaderboard => leaderboard.totalWonMatches).ToList();
                List<PlayerStatistic> playerStatisticList = new List<PlayerStatistic>();
                for (int indexLeaderBoardsSorted = 0; indexLeaderBoardsSorted < leaderBoardsSorted.Count; indexLeaderBoardsSorted++)
                {
                    PlayerStatistic playerStatistic = new PlayerStatistic()
                    {
                        Name = leaderBoardsSorted[indexLeaderBoardsSorted].username,
                        ProfileImage = leaderBoardsSorted[indexLeaderBoardsSorted].imageProfile,
                        TotalGames = leaderBoardsSorted[indexLeaderBoardsSorted].totalMatches,
                        Losses = leaderBoardsSorted[indexLeaderBoardsSorted].totalLostMatches,
                        Wins = leaderBoardsSorted[indexLeaderBoardsSorted].totalWonMatches,
                        Rank = indexLeaderBoardsSorted + 1
                    };
                    playerStatisticList.Add(playerStatistic);
                }
                dg_WorldStatistics.ItemsSource = playerStatisticList;
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