using HiveGameWPFApp.HiveProxy;
using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
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
using System.Windows.Threading;

namespace HiveGameWPFApp.Views
{
    public partial class EditCredentialsView : Page
    {
        private DispatcherTimer _timer;
        private int _timeLeft = 60;

        public EditCredentialsView()
        {
            InitializeComponent();
            StartTimer();
            FocusFirstTextBox();
            InitializeUserData();
        }

        public void InitializeUserData()
        {
            lbl_Email.Content = UserProfileSingleton.email;
            txt_Email.Text = UserProfileSingleton.email;
        }
        private void StartTimer()
        {
            _timer = new DispatcherTimer();
            _timer.Interval = TimeSpan.FromSeconds(1);
            _timer.Tick += Timer_Tick;
            _timer.Start();
        }
        private void Timer_Tick(object sender, EventArgs e)
        {
            _timeLeft--;
            txt_Timer.Text = Properties.Resources.txt_Timer + _timeLeft;

            if (_timeLeft <= 0)
            {
                _timer.Stop();
                txt_Timer.Visibility = Visibility.Collapsed;
                txt_ResendLink.Visibility = Visibility.Visible;
                txt_ResendCodeClick.Visibility = Visibility.Visible;
            }
        }
        private void FocusFirstTextBox()
        {
            TextBox firstTextBox = (TextBox)brd_BubbleOne.Child;
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

            if (currentTextBox == (TextBox)brd_BubbleOne.Child)
                ((TextBox)brd_BubbleTwo.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleTwo.Child)
                ((TextBox)brd_BubbleThree.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleThree.Child)
                ((TextBox)brd_BubbleFour.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleFour.Child)
                ((TextBox)brd_BubbleFive.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleFive.Child)
                ((TextBox)brd_BubbleSix.Child).Focus();
        }

        private void MoveToPreviousTextBox(TextBox currentTextBox)
        {
            if (currentTextBox == (TextBox)brd_BubbleSix.Child)
                ((TextBox)brd_BubbleFive.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleFive.Child)
                ((TextBox)brd_BubbleFour.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleFour.Child)
                ((TextBox)brd_BubbleThree.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleThree.Child)
                ((TextBox)brd_BubbleTwo.Child).Focus();

            else if (currentTextBox == (TextBox)brd_BubbleTwo.Child)
                ((TextBox)brd_BubbleOne.Child).Focus();
        }

        private bool AllTextBoxesFilled()
        {
            return ((TextBox)brd_BubbleOne.Child).Text.Length > 0 &&
                   ((TextBox)brd_BubbleTwo.Child).Text.Length > 0 &&
                   ((TextBox)brd_BubbleThree.Child).Text.Length > 0 &&
                   ((TextBox)brd_BubbleFour.Child).Text.Length > 0 &&
                   ((TextBox)brd_BubbleFive.Child).Text.Length > 0 &&
                   ((TextBox)brd_BubbleSix.Child).Text.Length > 0;
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

        private string GetEnteredCode()
        {
            return $"{((TextBox)brd_BubbleOne.Child).Text}{((TextBox)brd_BubbleTwo.Child).Text}" +
                   $"{((TextBox)brd_BubbleThree.Child).Text}{((TextBox)brd_BubbleFour.Child).Text}" +
                   $"{((TextBox)brd_BubbleFive.Child).Text}{((TextBox)brd_BubbleSix.Child).Text}";
        }


        private bool IsValidCode(string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.EmailVerificationManagerClient emailVerificationManager = new HiveProxy.EmailVerificationManagerClient();
            bool isValid = false;

            try
            {
                UserVerificator verificationUser = new UserVerificator();
                verificationUser.email = UserProfileSingleton.email;
                verificationUser.code = code;
                isValid = emailVerificationManager.VerifyCodeVerification(verificationUser);
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

            return isValid;
        }

        private void ShowNewPasswordSection()
        {
            lbl_ErrorMessage.Visibility = Visibility.Collapsed;
            grd_VerificationPanel.Visibility = Visibility.Collapsed;
            grd_EditionPanel.Visibility = Visibility.Visible;
        }

        private void BtnConfirmChanges_Click(object sender, RoutedEventArgs e)
        {
            txt_Email.BorderBrush = Brushes.White;
            brd_Password.BorderBrush = Brushes.Yellow;
            brd_ConfirmPassword.BorderBrush = Brushes.Yellow;

            if (ValidateFields())
            {
                if (ValidateSamePasswords())
                {
                    if (ValidateExistingCredential())
                    {
                        UpdateCredentials();
                    }
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogMissmatchesPassword);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        private bool ValidateFields()
        {
            bool emailVerification = Validator.ValidateEmail(txt_Email.Text);
            bool passwordVerificaton = Validator.ValidatePassword(pwb_Password.Password);
            bool passwordConfirmVerification = Validator.ValidatePassword(pwb_ConfirmPassword.Password);
           
            if (!emailVerification)
            {
                txt_Email.BorderBrush = Brushes.Red;
            }
            if (!passwordVerificaton)
            {
                brd_Password.BorderBrush = Brushes.Red;
            }
            if (!passwordConfirmVerification)
            {
                brd_ConfirmPassword.BorderBrush = Brushes.Red;
            }

            return emailVerification && passwordVerificaton && passwordConfirmVerification;
        }

        private bool ValidateSamePasswords()
        {
            bool samePasswords = false;

            if (pwb_ConfirmPassword.Password == pwb_Password.Password)
            {
                samePasswords = true;
            }
            return samePasswords;
        }

        private bool ValidateExistingCredential()
        {
            bool resultVerification = false;
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            
            try
            {
                int resultVerificationCredentials = userManagerClient.VerifyCredentials(UserProfileSingleton.username, txt_Email.Text);
                if (resultVerificationCredentials == Constants.DATA_MATCHES)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEmailAlreadyRegistered);
                    resultVerification = false;
                }
                else if (resultVerificationCredentials == Constants.NO_DATA_MATCHES)
                {
                    resultVerification = true;
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                    resultVerification = false;
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
            return resultVerification;
        }

        private void UpdateCredentials()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
           
            try
            {
                AccessAccount oldAccesAccount = new AccessAccount()
                {
                    idAccesAccount = UserProfileSingleton.idAccount,
                    email = UserProfileSingleton.email,
                    password = UserProfileSingleton.password
                };
                string passwordToEncrypt = pwb_Password.Password;
                string passwordEncripted = Hasher.hashToSHA1(passwordToEncrypt);
                AccessAccount newAccesAccount = new AccessAccount()
                {
                    idAccesAccount = UserProfileSingleton.idAccount,
                    email = txt_Email.Text,
                    password = passwordEncripted
                };
                int updateResult = userManagerClient.UpdateLoginCredentials(oldAccesAccount, newAccesAccount);
                if (updateResult == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogUpdatedData);
                    UserProfileSingleton.Instance.ResetSingleton();
                    DisconnectPlayer();
                    ReturnToLoginView();
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
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

        private void DisconnectPlayer()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.UserSessionManagerClient userSessionManagerClient = new UserSessionManagerClient();
            try
            {
                UserSession userSession = new UserSession() 
                { 
                    idAccount = UserProfileSingleton.idAccount,
                    username = UserProfileSingleton.username,
                };
                userSessionManagerClient.Disconnect(userSession,false);
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

        private void BtnResendCode_Click(object sender, MouseButtonEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.EmailVerificationManagerClient emailVerificationManager = new HiveProxy.EmailVerificationManagerClient();
            
            try
            {
                int resultEmailSend = emailVerificationManager.SendVerificationEmail(UserProfileSingleton.email);
                if (resultEmailSend == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogEmailVerificationMessage);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSendEmail);
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


        private void BtnCancelChange_Click(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }

        public void ReturnToLoginView()
        {
            DisconnectPlayer();
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            ReturnToLoginView();
        }

        private void TextBox_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            e.Handled = true; 
        }
    }
}