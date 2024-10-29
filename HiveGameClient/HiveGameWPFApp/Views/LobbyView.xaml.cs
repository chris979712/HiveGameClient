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

namespace HiveGameWPFApp.Views
{
    public partial class LobbyView : Page,IChatManagerCallback,IFriendsManagerCallback
    {
        private ChatManagerClient chatManager;
        private FriendsManagerClient friendsManagerClient;
        private string matchLobbyCode = "1234";
        private Profile userProfile = new Profile() { };
        public LobbyView()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            InitializeComponent();
            chatManager = new ChatManagerClient(new InstanceContext(this));
            friendsManagerClient = new FriendsManagerClient(new InstanceContext(this));
            userProfile.username = UserProfileSingleton.username;
            userProfile.idAccesAccount = UserProfileSingleton.idAccount;
            lbl_GameCode.Content = "12345";
            ExampleLoadListBox();
            try
            {
                friendsManagerClient.JoinAsConnectedFriend(UserProfileSingleton.username);
                friendsManagerClient.GetFriendsList(userProfile);
                chatManager.ConnectToChatLobby(userProfile, "1234");
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
                if (UserProfileSingleton.idAccount != Constants.DEFAULT_GUEST_ID)
                {
                    LeaveUserGameLobby();
                }
                else
                {
                    LeaveGuestGameLobby();
                }
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
                    username = UserProfileSingleton.username
                };
                int profileDisconnectionFromChat = chatManager.DisconectPlayerFromChat(guestToDisconnect);
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
                    username = UserProfileSingleton.username
                };
                int profileDisconnectionFromChat = chatManager.DisconectPlayerFromChat(guestToDisconnect);
                int profileDisconnectionFromGame = userSessionManagerClient.Disconnect(UserProfileSingleton.username);
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

        public void sendWelcomeNotificationMessage(string codeLobby)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            chatManager = new ChatManagerClient(new InstanceContext(this));
            Profile serverProfile = new Profile();
            serverProfile.username = "Server notification";
            string message = UserProfileSingleton.username +" "+ Properties.Resources.dialogMessageJoinChat;
            Message messageServer = new Message()
            {
                text = message,
                username = serverProfile.username,
            };
            try
            {
                chatManager.SendMessages(messageServer,codeLobby);
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
                    chatManager.SendMessages(messageToSend,"1234");
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
                Profile userProfile = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
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

        public void ObtainConnectedFriends(string[] connectedFriends)
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
                for(int friendsIndex = 0; friendsObtained.Length > friendsIndex; friendsIndex++)
                {
                    if (connectedFriends.Contains(friendsObtained[friendsIndex].username))
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

        private void ExampleLoadListBox()
        {
            Friend newFriend = new Friend()
            {
                username = "Chris985",
                imagePath = "/Images/Avatars/Avatar1.png"
            };
            lstv_ActiveFriendsList.Items.Add (newFriend);

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


}
