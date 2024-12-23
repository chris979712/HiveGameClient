﻿using HiveGameWPFApp.HiveProxy;
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
    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class LobbyView : Page,IChatManagerCallback,IFriendsManagerCallback,ILobbyManagerCallback
    {
        private ChatManagerClient chatManager;
        private FriendsManagerClient friendsManagerClient;
        private LobbyManagerClient lobbyManagerClient;
        private UserSessionManagerClient UserSessionManagerClient;
        private string matchLobbyCode;
        private Profile userProfile = new Profile() { };
        private List<UserSession> usersInLobby = new List<UserSession>();

        public LobbyView()
        {
            friendsManagerClient = new FriendsManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
            lobbyManagerClient = new LobbyManagerClient(new InstanceContext(this));
            UserSessionManagerClient = new UserSessionManagerClient();
            matchLobbyCode = MatchSingleton.codeMatch;
            InitializeComponent();
            ConnectToChat();
            ConnectAsFriendJoined();
            ConnectToTheLobby();
            lbl_GameCode.Content = matchLobbyCode;
            if (App.IsMusicPlaying)
            {
                App.PlayMusic("Audio/lobby.mp3");
            }
        }

        private void HideFullLobbyActions()
        {
            btn_SendOffPlayer.Visibility = Visibility.Collapsed;
            btn_Start.Visibility = Visibility.Collapsed;
            stckp_Friends.Visibility = Visibility.Collapsed;
            stckp_SearchFriends.Visibility = Visibility.Collapsed;
            lvw_ActiveFriendsList.Visibility = Visibility.Collapsed;
        }

        private void ShowCreatorActions()
        {
            stckp_Friends.Visibility = Visibility.Visible;
            stckp_SearchFriends.Visibility = Visibility.Visible;
            lvw_ActiveFriendsList.Visibility = Visibility.Visible;
            btn_SendOffPlayer.Visibility = Visibility.Collapsed;
            btn_Start.Visibility = Visibility.Collapsed;
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

        private void ConnectToTheLobby()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount,
                    codeMatch = matchLobbyCode
                };
                lobbyManagerClient.ConnectToLobby(userSession,matchLobbyCode);
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

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogConfirmLeaveLobby))
            {
                LoggerManager logger = new LoggerManager(this.GetType());
                UserSession userSession = new UserSession()
                {
                    username = UserProfileSingleton.username,
                    idAccount = UserProfileSingleton.idAccount,
                    codeMatch = MatchSingleton.codeMatch   
                };
                try
                {
                    bool isKicked = false;
                    MatchSingleton.Instance.ResetSingleton();
                    KickPlayerFromLobby(userSession, isKicked);
                    RedirectRespectivePlayers(isKicked);

                    matchLobbyCode = "0";
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
        }

        private void KickPlayerFromLobby(UserSession session, bool isKicked)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                lobbyManagerClient.LeavePlayerFromLobby(session, matchLobbyCode, isKicked);
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

        private void LeaveUserGameLobby()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                Profile guestToDisconnect = new Profile()
                {
                    username = UserProfileSingleton.username,
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                int profileDisconnectionFromChat = chatManager.DisconectPlayerFromChat(guestToDisconnect, matchLobbyCode);
                if (profileDisconnectionFromChat == Constants.SuccesOperation)
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
                int profileDisconnectionFromGame = userSessionManagerClient.Disconnect(userSession, false);
                if(profileDisconnectionFromChat == Constants.SuccesOperation && profileDisconnectionFromGame == Constants.SuccesOperation)
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

        public void ReceiveMessage(Message[] messages)
        {
            ChatMessagesPanel.Children.Clear();   
            for (int indexListMessage = 0; indexListMessage < messages.Length; indexListMessage++)
            {
                if (messages[indexListMessage].username.Equals(userProfile.username))
                {
                    string messageReceived = $"{messages[indexListMessage].username}: {messages[indexListMessage].text} {DateTime.Now.ToString("HH:mm")}";
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
                    string messageReceived = $"{messages[indexListMessage].username}: {messages[indexListMessage].text} {DateTime.Now.ToString("HH:mm")}";
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
                txtb_MessageInput.Clear();
                txtb_CharCount.Text = "0/100"; 
            }
        }

        private void BtnInviteFriend_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveProxy.EmailInvitationManagerClient();
            try
            {
                Button clickedButton = sender as Button;
                Friend friendToInvite = clickedButton.DataContext as Friend;  
                UserVerificator userToInvite = new UserVerificator() 
                {
                    code = matchLobbyCode,
                    email = friendToInvite.email,
                };
                int resultInvitation = emailInvitationManagerClient.SendEmailInvitation(userToInvite);
                if(resultInvitation == Constants.SuccesOperation)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogEmailInvitationSend);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSendEmail);
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

        private void BtnSendOff_Click(object sender, RoutedEventArgs e)
        {
            UserSession userToKick = usersInLobby[1];
            if (DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogConfirmationKickPlayer))
            {
                LoggerManager logger = new LoggerManager(this.GetType());
                Profile userToKickFromChat = new Profile()
                {
                    idAccount = userToKick.idAccount,
                    username = userToKick.username,
                };
                try
                {
                    bool isKicked = true;
                    if (userToKick.idAccount != Constants.DefaultGuestId)
                    {
                        MatchSingleton.Instance.ResetSingleton();
                        KickPlayerFromLobby(userToKick, isKicked);
                        chatManager.DisconectPlayerFromChat(userToKickFromChat, matchLobbyCode);
                    }
                    else
                    {
                        MatchSingleton.Instance.ResetSingleton();
                        KickPlayerFromLobby(userToKick, isKicked);
                        UserSessionManagerClient.Disconnect(userToKick, false);
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
        }

        private void RefreshActiveFriendsList_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSession userSession = new UserSession()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username
                };
                friendsManagerClient.GetFriendsList(userSession);
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

        public void ObtainConnectedFriends(UserSession[] connectedFriends)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            lvw_ActiveFriendsList.Items.Clear();
            try
            {
                HiveProxy.FriendshipManagerClient friendshipManagerClient = new HiveProxy.FriendshipManagerClient();
                Profile userProfileRequest = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                Profile[] friendsObtained = friendshipManagerClient.GetAllFriends(userProfileRequest);
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
                    lvw_ActiveFriendsList.Items.Clear();
                    for(int indexFriends = 0; friends.Count > indexFriends; indexFriends++)
                    {
                        lvw_ActiveFriendsList.Items.Add(friends[indexFriends]);
                    }
                });
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

        public void ReceivePlayersToLobby(UserSession[] user)
        {
            usersInLobby = user.ToList();
            if (user[0].idAccount == -2)
            {
                bool isKicked = false;
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogHostHasLeft);
                RedirectRespectivePlayers(isKicked);
            }
            else if (user.Length == 1)
            {
                ChargeOnePlayerProfile(user[0]);
            }
            else if (user.Length == 2)
            {
                ChargeTwoPlayersProfile(user);
            }
        }

        private void RedirectRespectivePlayers(bool isKicked)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            UserSession userSession = new UserSession()
            {
                username = UserProfileSingleton.username,
                idAccount = UserProfileSingleton.idAccount
            };
            try
            {
                if (UserProfileSingleton.idAccount != Constants.DefaultGuestId)
                {
                    MatchSingleton.Instance.ResetSingleton();
                    KickPlayerFromLobby(userSession, isKicked);
                    LeaveUserGameLobby();
                }
                else
                {
                    MatchSingleton.Instance.ResetSingleton();
                    KickPlayerFromLobby(userSession, isKicked);
                    LeaveGuestGameLobby();
                }
                matchLobbyCode = "0";
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

        private void ChargeOnePlayerProfile(UserSession user)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            try
            {
                Profile profileUser = userManagerClient.GetUserProfileByUsername(user.username);
                txtb_HostName.Text = profileUser.nickname;
                img_AvatarHost.Source = new BitmapImage(new Uri(profileUser.imagePath, UriKind.Relative));
                brd_Guest.Visibility = Visibility.Collapsed;
                ShowCreatorActions();
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

        private void ChargeTwoPlayersProfile(UserSession[] users)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            try
            {
                Profile profileUserHost = userManagerClient.GetUserProfileByUsername(users[0].username);
                txtb_HostName.Text = profileUserHost.nickname;
                img_AvatarHost.Source = new BitmapImage(new Uri(profileUserHost.imagePath, UriKind.Relative));
                if (users[1].idAccount == Constants.DefaultGuestId)
                {
                    txtb_GuestName.Text = users[1].username;
                    img_AvatarGuest.Source = new BitmapImage(new Uri("/Images/Avatars/Avatar1.png", UriKind.Relative));
                }
                else
                {
                    Profile profileUserGuest = userManagerClient.GetUserProfileByUsername(users[1].username);
                    txtb_GuestName.Text = profileUserGuest.nickname;
                    img_AvatarGuest.Source = new BitmapImage(new Uri(profileUserGuest.imagePath, UriKind.Relative));
                }
                brd_Guest.Visibility = Visibility.Visible;
                GameMatch gamer = new GameMatch()
                {
                    idAccount = UserProfileSingleton.idAccount,
                    code = matchLobbyCode
                };
                int verificationCreator = lobbyManagerClient.VerifyCreatorOfTheMatch(gamer);
                ShowCorrectActions(verificationCreator);
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

        private void ShowCorrectActions(int verificationResult)
        {
            if(verificationResult == 0)
            {
                HideFullLobbyActions();
                btn_SendOffPlayer.Visibility = Visibility.Collapsed;
            }else if(verificationResult == 1)
            {
                HideFullLobbyActions();
                btn_SendOffPlayer.Visibility= Visibility.Visible;
                btn_Start.Visibility = Visibility.Visible;
            }
        }

        private void SearchFriend_Click(object sender, EventArgs e)
        {
            txt_SearchFriend.BorderBrush = Brushes.Yellow;
            if (ValidateField())
            {
                List<Friend> friends = lvw_ActiveFriendsList.Items.Cast<Friend>().ToList();
                Friend foundedFriend = new Friend();
                foundedFriend.username = "Not online";
                for(int friendsIndex=0; friendsIndex<friends.Count; friendsIndex++)
                {
                    if(friends[friendsIndex].username == txt_SearchFriend.Text)
                    {
                       foundedFriend = friends[friendsIndex];
                    }
                }
                if (foundedFriend.username != "Not online")
                {
                    lvw_ActiveFriendsList.Items.Clear();
                    lvw_ActiveFriendsList.Items.Add(foundedFriend);
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogMangerCouldntFindFriend);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        private void BtnStarGame_Click(object sender, RoutedEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                lobbyManagerClient.StartMatch(matchLobbyCode);
                MatchCreator matchCreator = new MatchCreator()
                {
                    idCreatorAccount = UserProfileSingleton.idAccount,
                    codeMatch = matchLobbyCode,
                    stateMatch = "Started"
                };
                MatchCreatorManagerClient matchCreatorManagerClient = new MatchCreatorManagerClient();
                matchCreatorManagerClient.UpdateMatchState(matchCreator);
                GameBoardView gameBoardView = new GameBoardView();
                this.NavigationService.Navigate(gameBoardView);
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

        private bool ValidateField()
        {
            bool validationUserName = Validator.ValidateUsername(txt_SearchFriend.Text);
            if (!validationUserName)
            {
                txt_SearchFriend.BorderBrush = Brushes.Red;
            }
            return validationUserName;
        }

        public void ReceiveKickedNotification()
        {
            DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogYouveBeenKick);
            if(UserProfileSingleton.idAccount == Constants.DefaultGuestId)
            {
                LoginView loginView = new LoginView();
                this.NavigationService.Navigate(loginView);
            }
            else
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
            }
        }

        public void ReceiveStartMatchNotification()
        {
            GameBoardView gameBoardView = new GameBoardView();
            this.NavigationService.Navigate(gameBoardView);
        }

        private sealed class Friend
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
                   userSessionOne.idAccount == userSessionTwo.idAccount && userSessionOne.codeMatch == userSessionTwo.codeMatch;
        }

        public int GetHashCode(UserSession userSession)
        {
            int hashUsername = userSession.username?.GetHashCode() ?? 0;
            int hashIdAccount = userSession.idAccount.GetHashCode();
            int hashCodeMatch = userSession.codeMatch?.GetHashCode() ?? 0;
            return hashUsername ^ hashIdAccount ^ hashCodeMatch;
        }
    }


}
