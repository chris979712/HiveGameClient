using System;
using System.Collections.Generic;
using System.Linq;
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
        public GameCodeView()
        {
            InitializeComponent();
            DisplayCodeInLabel("12345");
        }
        private void DisplayCodeInLabel(string code)
        {
            string cleanCode = Regex.Replace(code, @"\s+", "").Substring(0, Math.Min(code.Length, 6));

            string formattedCode = string.Join("    ", cleanCode.ToCharArray());

            lbl_GameCode.Content = formattedCode;
        }


        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }


        private void BtnJoin_Click(object sender, RoutedEventArgs e)
        {
            LobbyView lobbyView = new LobbyView();
            this.NavigationService.Navigate(lobbyView);
        }

        private void Txtb_Username_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
           
            e.Handled = !Regex.IsMatch(e.Text, "^[0-9]$");
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
