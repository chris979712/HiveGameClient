using System;
using System.Collections.Generic;
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
using System.Windows.Threading;

namespace HiveGameWPFApp.Views
{
    public partial class EditCredentialsView : Page
    {
        private DispatcherTimer timer;
        private int timeLeft = 60; 

        public EditCredentialsView()
        {
            InitializeComponent();
            StartTimer();
            FocusFirstTextBox();
        }
        private void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }
        private void Timer_Tick(object sender, EventArgs e)
        {
            timeLeft--;
            txt_Timer.Text = $"Podrás solicitar un código nuevo en {timeLeft} segundos";
            if (timeLeft <= 0)
            {
                timer.Stop();
                txt_Timer.Visibility = Visibility.Collapsed;
                txt_ResendLink.Visibility = Visibility.Visible;
                txt_ResendCode_Click.Visibility = Visibility.Visible;
            }
        }
        private void FocusFirstTextBox()
        {
            TextBox firstTextBox = (TextBox)border1.Child; 
            firstTextBox.Focus();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox currentTextBox = (TextBox)sender;
            if (currentTextBox.Text.Length == 1)
            {
                MoveToNextTextBox(currentTextBox);
            }
            else if (currentTextBox.Text.Length == 0)
            {
                MoveToPreviousTextBox(currentTextBox);
            }

            if (AllTextBoxesFilled())
            {
                ValidateCode();
            }
        }
       

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox currentTextBox = (TextBox)sender;
            Border currentBorder = (Border)currentTextBox.Parent;
            currentBorder.BorderBrush = Brushes.Yellow;
        }
        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            TextBox currentTextBox = (TextBox)sender;
            Border currentBorder = (Border)currentTextBox.Parent;
            currentBorder.BorderBrush = Brushes.White;
        }

        private void MoveToNextTextBox(TextBox currentTextBox)
        {
            if (currentTextBox == (TextBox)border1.Child)
                ((TextBox)border2.Child).Focus();
            else if (currentTextBox == (TextBox)border2.Child)
                ((TextBox)border3.Child).Focus();
            else if (currentTextBox == (TextBox)border3.Child)
                ((TextBox)border4.Child).Focus();
            else if (currentTextBox == (TextBox)border4.Child)
                ((TextBox)border5.Child).Focus();
            else if (currentTextBox == (TextBox)border5.Child)
                ((TextBox)border6.Child).Focus();
        }

        private void MoveToPreviousTextBox(TextBox currentTextBox)
        {
            if (currentTextBox == (TextBox)border6.Child)
                ((TextBox)border5.Child).Focus();
            else if (currentTextBox == (TextBox)border5.Child)
                ((TextBox)border4.Child).Focus();
            else if (currentTextBox == (TextBox)border4.Child)
                ((TextBox)border3.Child).Focus();
            else if (currentTextBox == (TextBox)border3.Child)
                ((TextBox)border2.Child).Focus();
            else if (currentTextBox == (TextBox)border2.Child)
                ((TextBox)border1.Child).Focus();
        }

        private bool AllTextBoxesFilled()
        {
            return ((TextBox)border1.Child).Text.Length > 0 &&
                   ((TextBox)border2.Child).Text.Length > 0 &&
                   ((TextBox)border3.Child).Text.Length > 0 &&
                   ((TextBox)border4.Child).Text.Length > 0 &&
                   ((TextBox)border5.Child).Text.Length > 0 &&
                   ((TextBox)border6.Child).Text.Length > 0;
        }

        private void ValidateCode()
        {
            string enteredCode = GetEnteredCode();
            if (IsValidCode(enteredCode))
            {
                ShowNewPasswordSection();
            }
            else
            {
                lbl_ErrorMessage.Visibility = Visibility.Visible;
            }
        }

        // Función que obtiene el código ingresado por el usuario
        private string GetEnteredCode()
        {
            return $"{((TextBox)border1.Child).Text}{((TextBox)border2.Child).Text}" +
                   $"{((TextBox)border3.Child).Text}{((TextBox)border4.Child).Text}" +
                   $"{((TextBox)border5.Child).Text}{((TextBox)border6.Child).Text}";
        }


        private bool IsValidCode(string code)
        {
            // Valida el código (puedes implementar la validación real)
            return code == "123456"; // Código válido de ejemplo
        }

        private void ShowNewPasswordSection()
        {
            PanelTwo.Visibility = Visibility.Visible;
            PanelOne.Visibility = Visibility.Collapsed;
            lbl_ErrorMessage.Visibility= Visibility.Collapsed;
        }

        private void BtnConfirmChanges_Click(object sender, RoutedEventArgs e)
        {

        }


        private void BtnResendCode_Click(object sender, MouseButtonEventArgs e)
        {

        }
        

        private void BtnCancelChange_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }
    }
}