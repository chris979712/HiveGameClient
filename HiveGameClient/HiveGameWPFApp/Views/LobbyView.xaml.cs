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
            }catch (EndpointNotFoundException endpointException)
            {
                logger.LogError(endpointException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
            catch (CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }
            catch (Exception exception)
            {
                logger.LogFatal(exception);
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
                    string messageReceived = $"{message[indexListMessage].username}: {message[indexListMessage].text}";
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
            string message = txtMessageInput.Text;

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
                    txtMessageInput.Clear();
                }
                catch (EndpointNotFoundException endpointException)
                {
                    logger.LogError(endpointException);
                }
                catch (TimeoutException timeoutException)
                {
                    logger.LogError(timeoutException);
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogError(communicationException);
                }
                catch (Exception exception)
                {
                    logger.LogFatal(exception);
                }
                txtMessageInput.Clear();
                txtCharCount.Text = "0/100"; 
            }
        }


        private void TxtMessageInput_TextChanged(object sender, TextChangedEventArgs e)
        {
            int currentLength = txtMessageInput.Text.Length;
            txtCharCount.Text = $"{currentLength}/100";


            if (currentLength == 100)
            {
                txtMessageInput.IsReadOnly = true;
            }
            else
            {
                txtMessageInput.IsReadOnly = false;
            }
        }
    }
}
