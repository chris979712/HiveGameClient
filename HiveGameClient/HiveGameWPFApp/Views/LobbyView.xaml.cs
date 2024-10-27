using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace HiveGameWPFApp.Views
{
    public partial class LobbyView : Page,IChatManagerCallback
    {
        private ChatManagerClient chatManager;
        private string matchLobbyCode = "1234";
        private Profile userProfile = new Profile() { };
        public LobbyView()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            InitializeComponent();
            chatManager = new ChatManagerClient(new InstanceContext(this));
            userProfile.username = UserProfileSingleton.username;
            userProfile.idAccesAccount = UserProfileSingleton.idAccount;
            try
            {
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
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
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
    }
}
