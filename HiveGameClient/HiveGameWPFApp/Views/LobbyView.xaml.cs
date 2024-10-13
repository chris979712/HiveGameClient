using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace HiveGameWPFApp.Views
{
    public partial class LobbyView : Page
    {
        public LobbyView()
        {
            InitializeComponent();
        }
        private void BtnSendMessage_Click(object sender, RoutedEventArgs e)
        {
            string message = txtMessageInput.Text;

            if (!string.IsNullOrEmpty(message))
            {

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
                    Text = message,
                    Foreground = new SolidColorBrush(Colors.Black),
                    FontSize = 12,
                    FontWeight = FontWeights.Bold, 
                    TextWrapping = TextWrapping.Wrap,
                    MaxWidth = 250 
                };


                messageContainer.Child = messageBlock;


                ChatMessagesPanel.Children.Add(messageContainer);

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
