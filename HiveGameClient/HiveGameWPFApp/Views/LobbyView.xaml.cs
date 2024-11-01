using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace HiveGameWPFApp.Views
{
    public partial class LobbyView : Page,IChatManagerCallback,IFriendsManagerCallback,ILobbyManagerCallback
    {
        private ChatManagerClient chatManager;
        private FriendsManagerClient friendsManagerClient;
        private LobbyManagerClient lobbyManagerClient;
        private string matchLobbyCode;
        private Profile userProfile = new Profile() { };
        public LobbyView()
        {
            friendsManagerClient = new FriendsManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
            lobbyManagerClient = new LobbyManagerClient(new InstanceContext(this));
            matchLobbyCode = MatchSingleton.codeMatch;
            InitializeComponent();
            ConnectToChat();
            ConnectAsFriendJoined();
            ConnectToTheLobby();
            lbl_GameCode.Content = matchLobbyCode;
        }

        private void ConnectToChat()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            userProfile.username = UserProfileSingleton.username;
            userProfile.idAccesAccount = UserProfileSingleton.idAccount;
            try
            {
                chatManager.ConnectToChatLobby(userProfile, matchLobbyCode);
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

        private void ConnectToTheLobby()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount
                };
                lobbyManagerClient.ConnectToLobby(userSession,matchLobbyCode);
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

        private void ConnectAsFriendJoined()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession session = new UserSession()
                {
                    idAccount = userProfile.idAccesAccount,
                    username = userProfile.username,
                };
                friendsManagerClient.JoinAsConnectedFriend(session);
                friendsManagerClient.GetFriendsList(session);
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
            if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogConfirmLeaveLobby))
            {
                LoggerManager logger = new LoggerManager(this.GetType());
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount
                };
                try
                {
                    if (UserProfileSingleton.idAccount != Constants.DEFAULT_GUEST_ID)
                    {
                        MatchSingleton.Instance.ResetSingleton();
                        KickPlayerFromLobby(userSession);
                        LeaveUserGameLobby();
                    }
                    else
                    {
                        MatchSingleton.Instance.ResetSingleton();
                        KickPlayerFromLobby(userSession);
                        LeaveGuestGameLobby();
                    }
                    matchLobbyCode = "0";
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

        private void KickPlayerFromLobby(UserSession session)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                lobbyManagerClient.LeavePlayerFromLobby(session, matchLobbyCode);
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

        private void LeaveUserGameLobby()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
                Profile guestToDisconnect = new Profile()
                {
                    username = UserProfileSingleton.username,
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                int profileDisconnectionFromChat = chatManager.DisconectPlayerFromChat(guestToDisconnect, matchLobbyCode);
                if (profileDisconnectionFromChat == Constants.SUCCES_OPERATION)
                {
                    MainMenu mainMenu = new MainMenu();
                    this.NavigationService.Navigate(mainMenu);
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogCouldntLobbyDisconnection);
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

        private void LeaveGuestGameLobby()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
                Profile guestToDisconnect = new Profile()
                {
                    username = UserProfileSingleton.username,
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount,
                };
                int profileDisconnectionFromChat = chatManager.DisconectPlayerFromChat(guestToDisconnect, matchLobbyCode);
                int profileDisconnectionFromGame = userSessionManagerClient.Disconnect(userSession);
                if(profileDisconnectionFromChat == Constants.SUCCES_OPERATION && profileDisconnectionFromGame == Constants.SUCCES_OPERATION)
                {
                    UserProfileSingleton.Instance.ResetSingleton();
                    LoginView loginView = new LoginView();
                    this.NavigationService.Navigate(loginView);
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.globalDialog_PartialDisconnection);
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

        public void ReceiveMessage(Message[] message)
        {
            ChatMessagesPanel.Children.Clear();   
            for (int indexListMessage = 0; indexListMessage < message.Length; indexListMessage++)
            {
                if (message[indexListMessage].username.Equals(userProfile.username))
                {
                    string messageReceived = $"{message[indexListMessage].username}: {message[indexListMessage].text} {DateTime.Now.ToString("HH:mm")}";
                    Border messageContainer = new Border
                    {
                        Background = new SolidColorBrush(Colors.White),
                        BorderThickness = new Thickness(1),
                        Padding = new Thickness(10),
                        Margin = new Thickness(20, 5, 20, 5),
                        HorizontalAlignment = HorizontalAlignment.Right
                    };
                    TextBlock messageBlock = new TextBlock
                    {
                        Text = messageReceived,
                        Foreground = new SolidColorBrush(Colors.Black),
                        FontSize = 12,
                        FontWeight = FontWeights.Bold,
                        TextWrapping = TextWrapping.Wrap,
                        MaxWidth = 250
                    };
                    messageContainer.Child = messageBlock;
                    ChatMessagesPanel.Children.Add(messageContainer);
                }
                else
                {
                    string messageReceived = $"{message[indexListMessage].username}: {message[indexListMessage].text} {DateTime.Now.ToString("HH:mm")}";
                    Border messageContainer = new Border
                    {
                        Background = new SolidColorBrush(Colors.White),
                        BorderThickness = new Thickness(1),
                        Padding = new Thickness(10),
                        Margin = new Thickness(20, 5, 20, 5),
                        HorizontalAlignment = HorizontalAlignment.Left
                    };
                    TextBlock messageBlock = new TextBlock
                    {
                        Text = messageReceived,
                        Foreground = new SolidColorBrush(Colors.Black),
                        FontSize = 12,
                        FontWeight = FontWeights.Bold,
                        TextWrapping = TextWrapping.Wrap,
                        MaxWidth = 250
                    };
                    messageContainer.Child = messageBlock;
                    ChatMessagesPanel.Children.Add(messageContainer);
                }
            }
            
        }

        public void UserConnected(Profile[] users)
        {
            Console.ReadLine();
        }

        private void BtnSendMessage_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            string message = txtb_MessageInput.Text;

            if (!string.IsNullOrEmpty(message))
            {
                Message messageToSend = new Message()
                {
                    username = userProfile.username,
                    text = message
                };
                try
                {
                    chatManager.SendMessages(messageToSend,matchLobbyCode);
                    txtb_MessageInput.Clear();
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
                txtb_MessageInput.Clear();
                txtb_CharCount.Text = "0/100"; 
            }
        }

        private void BtnAddFriend_Click(object sender, RoutedEventArgs e)
        {
        }


        private void TxtMessageInput_TextChanged(object sender, TextChangedEventArgs e)
        {
            int currentLength = txtb_MessageInput.Text.Length;
            txtb_CharCount.Text = $"{currentLength}/100";
            if (currentLength == 100)
            {
                txtb_MessageInput.IsReadOnly = true;
            }
            else
            {
                txtb_MessageInput.IsReadOnly = false;
            }
        }

        private void BtnMyAccount_Click(object sender, RoutedEventArgs e)
        {

        }

        private void RefreshActiveFriendsList_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession userProfile = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username
                };
                friendsManagerClient.GetFriendsList(userProfile);
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

        public void ObtainConnectedFriends(UserSession[] connectedFriends)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            lstv_ActiveFriendsList.Items.Clear();
            try
            {
                HiveProxy.FriendshipManagerClient friendshipManagerClient = new HiveProxy.FriendshipManagerClient();
                Profile userProfile = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                Profile[] friendsObtained = friendshipManagerClient.GetAllFriends(userProfile);
                List<Friend> friends = new List<Friend>();
                UserSessionComparer comparer = new UserSessionComparer();
                for (int friendsIndex = 0; friendsObtained.Length > friendsIndex; friendsIndex++)
                {
                    UserSession friendSession = new UserSession()
                    {
                        username = friendsObtained[friendsIndex].username,
                        idAccount = friendsObtained[friendsIndex].idAccount
                    };
                    if (connectedFriends.Contains(friendSession,comparer))
                    {
                        Friend ActiveFriend = new Friend()
                        {
                            idAccount = friendsObtained[friendsIndex].idAccount,
                            username = friendsObtained[friendsIndex].username,
                            nickname = friendsObtained[friendsIndex].nickname,
                            email = friendsObtained[friendsIndex].email,
                            imagePath = friendsObtained[friendsIndex].imagePath
                        };
                        friends.Add(ActiveFriend);
                    }
                }
                Application.Current.Dispatcher.Invoke(() =>
                {
                    lstv_ActiveFriendsList.Items.Clear();
                    for(int indexFriends = 0; friends.Count > indexFriends; indexFriends++)
                    {
                        lstv_ActiveFriendsList.Items.Add(friends[indexFriends]);
                    }
                });
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

        public void ReceivePlayersToLobby(UserSession[] users)
        {
            if (users[0].idAccount == -2)
            {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogHostHasLeft);
                RedirectRespectivePlayers();
            }
            else if (users.Length == 1)
            {
                ChargeOnePlayerProfile(users[0]);
            }else if(users.Length == 2)
            {
                ChargeTwoPlayersProfile(users);
            }
        }

        private void RedirectRespectivePlayers()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            UserSession userSession = new UserSession()
            {
                username = UserProfileSingleton.username,
                idAccount = UserProfileSingleton.idAccount
            };
            try
            {
                if (UserProfileSingleton.idAccount != Constants.DEFAULT_GUEST_ID)
                {
                    MatchSingleton.Instance.ResetSingleton();
                    KickPlayerFromLobby(userSession);
                    LeaveUserGameLobby();
                }
                else
                {
                    MatchSingleton.Instance.ResetSingleton();
                    KickPlayerFromLobby(userSession);
                    LeaveGuestGameLobby();
                }
                matchLobbyCode = "0";
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

        private void ChargeOnePlayerProfile(UserSession user)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            try
            {
                Profile profileUser = userManagerClient.GetUserProfileByUsername(user.username);
                txtb_HostName.Text = profileUser.nickname;
                img_AvatarHost.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                txtb_Guest.Text = Properties.Resources.txtb_Guest;
                txtb_GuestName.Text = Properties.Resources.txtb_GuestName;
                img_AvatarGuest.Source = new BitmapImage(new Uri("/Images/Icons/DefaultImagePlayerLobby.png", UriKind.Relative));
                lstv_ActiveFriendsList.Visibility = Visibility.Visible;
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

        private void ChargeTwoPlayersProfile(UserSession[] users)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            try
            {
                Profile profileUserHost = userManagerClient.GetUserProfileByUsername(users[0].username);
                Profile profileUserGuest = userManagerClient.GetUserProfileByUsername(users[1].username);
                txtb_HostName.Text = profileUserHost.nickname;
                img_AvatarHost.Source = new BitmapImage(new Uri(profileUserHost.imagePath, UriKind.Relative));
                txtb_GuestName.Text = profileUserGuest.nickname;
                img_AvatarGuest.Source = new BitmapImage(new Uri(profileUserGuest.imagePath, UriKind.Relative));
                lstv_ActiveFriendsList.Visibility = Visibility.Hidden;
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
        private class Friend
        {
            public int idAccount {  get; set; }
            public string username {  get; set; }

            public string nickname { get; set; }
            public string email { get; set; }

            public string imagePath { get; set; }

        }
    }
    public class UserSessionComparer : IEqualityComparer<UserSession>
    {
        public bool Equals(UserSession userSessionOne, UserSession userSessionTwo)
        {
            return string.Equals(userSessionOne.username, userSessionTwo.username, StringComparison.Ordinal) &&
                   userSessionOne.idAccount == userSessionTwo.idAccount;
        }

        public int GetHashCode(UserSession userSession)
        {
            int hashUsername = userSession.username?.GetHashCode() ?? 0;
            int hashIdAccount = userSession.idAccount.GetHashCode();
            return hashUsername ^ hashIdAccount;
        }
    }


}
