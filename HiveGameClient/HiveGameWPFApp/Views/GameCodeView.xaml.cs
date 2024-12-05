using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
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

    public partial class GameCodeView : Page
    {

        private string _codeLobby;
        public GameCodeView()
        {
            InitializeComponent();
            
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(UserProfileSingleton.idAccount == Constants.DEFAULT_GUEST_ID)
            {
                LeaveGuestGameLobbyJoin();
            }
            else
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
            }
        }

        private void LeaveGuestGameLobbyJoin()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
                UserSession userSession = new UserSession()
                {
                    idAccount = Constants.DEFAULT_GUEST_ID,
                    username = UserProfileSingleton.username
                };
                int profileDisconnectionFromGame = userSessionManagerClient.Disconnect(userSession, false);
                if (profileDisconnectionFromGame == Constants.SUCCES_OPERATION)
                {
                    UserProfileSingleton.Instance.ResetSingleton();
                    LoginView loginView = new LoginView();
                    this.NavigationService.Navigate(loginView);
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogCouldntLobbyDisconnection);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }


        private void BtnJoin_Click(object sender, RoutedEventArgs e)
        {
            txtb_Code.BorderBrush = Brushes.Yellow;
            if (ValidateField())
            {
                _codeLobby = Regex.Replace(txtb_Code.Text.Trim(), @"\s+", "", RegexOptions.None, TimeSpan.FromMilliseconds(500));
                int validationResultLobby = ValidateExistingLobby(_codeLobby);
                if (validationResultLobby == Constants.DATA_MATCHES)
                {
                    ValidateCapacityOfLobby(_codeLobby);
                }
                else if(validationResultLobby == Constants.NO_DATA_MATCHES)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogNotExistingCode);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        private void ValidateCapacityOfLobby(string codeLobby)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.MatchCreatorManagerClient matchCreatorManagerClient = new MatchCreatorManagerClient();
                bool verificationResult = matchCreatorManagerClient.VerifyIfLobbyIsFull(codeLobby);
                if (verificationResult)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogFullLobby);
                }
                else
                {
                    MatchSingleton.Instance.CreateInstance(codeLobby);
                    LobbyView lobbyView = new LobbyView();
                    this.NavigationService.Navigate(lobbyView);
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private int ValidateExistingLobby(string codeLobby)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int validationResult = Constants.ERROR_OPERATION;
            try
            {
                HiveProxy.MatchCreatorManagerClient matchCreatorManagerClient = new MatchCreatorManagerClient();
                bool validationExistingResult = matchCreatorManagerClient.VerifyExistingCode(codeLobby);
                if (validationExistingResult)
                {
                    validationResult = Constants.DATA_MATCHES;
                }
                else
                {
                    validationResult = Constants.NO_DATA_MATCHES;
                }
            }
            catch (EndpointNotFoundException endPointException)
            {
                logger.LogFatal(endPointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            }
            catch (TimeoutException timeOutException)
            {
                logger.LogWarn(timeOutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
            return validationResult;
        }

        private bool ValidateField()
        {
            bool validationResult = Validator.ValidateCode(txtb_Code.Text);
            if (!validationResult)
            {
                txtb_Code.BorderBrush = Brushes.Red;
            }
            return validationResult;
        }

        private void Txtb_Username_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
           
            e.Handled = !Regex.IsMatch(e.Text, "^[0-9]$", RegexOptions.None, TimeSpan.FromMilliseconds(500));
        }

        private void Txtb_Username_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox == null) return;

            string cleanText = textBox.Text.Replace(" ", "");

            if (cleanText.Length > 6)
            {
                cleanText = cleanText.Substring(0, 6);
            }

            string formattedText = string.Join("    ", cleanText.ToCharArray());

            if (textBox.Text != formattedText)
            {
                textBox.Text = formattedText;
                textBox.CaretIndex = textBox.Text.Length; 
            }
        }
    }
}
