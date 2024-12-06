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

namespace HiveGameWPFApp.Views
{

    public partial class VerifyEmailAndUsername : Page
    {
        public VerifyEmailAndUsername()
        {
            InitializeComponent();
        }
        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            GoToLoginView();
        }

        private void GoToLoginView()
        {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }
        private void BtnConfirm_Click(object sender, RoutedEventArgs e)
        {
            txtb_Username.BorderBrush = Brushes.Yellow;
            txtb_Email.BorderBrush = Brushes.Yellow;
            if (ValidateFields())
            {
                if (ValidateExistingUserAccount())
                {
                    SendEmailVerificationCode();
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        private void SendEmailVerificationCode()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
                HiveProxy.EmailVerificationManagerClient emailVerificationManagerClient = new EmailVerificationManagerClient();
                Profile userProfile = userManagerClient.GetUserProfileByUsername(txtb_Username.Text);
                if(userProfile.idProfile == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }
                else
                {
                    UserProfileSingleton.Instance.CreateInstance(userProfile);
                    int resultEmailSended = emailVerificationManagerClient.SendVerificationEmail(userProfile.email);
                    if(resultEmailSended == Constants.SUCCES_OPERATION)
                    {
                        DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogEmailVerificationMessage);
                        EditCredentialsView editCredentialsView = new EditCredentialsView();
                        this.NavigationService.Navigate(editCredentialsView);
                    }
                    else
                    {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCouldntSendEmail);
                    }
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

        private bool ValidateExistingUserAccount()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            bool validation = false;
            try
            {
                HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
                int resultValidation = userManagerClient.VerifyExistingAccesAccount(txtb_Email.Text,txtb_Username.Text);
                if(resultValidation == Constants.DATA_MATCHES)
                {
                    validation = true;
                }
                else if(resultValidation == Constants.NO_DATA_MATCHES)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogCouldntFindUserAccount);
                }
                else if(resultValidation == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
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
            return validation;
        }

        private bool ValidateFields()
        {
            bool validateUsername = Validator.ValidateUsername(txtb_Username.Text);
            bool validateEmail = Validator.ValidateEmail(txtb_Email.Text);
            if(!validateUsername)
            {
                txtb_Username.BorderBrush = Brushes.Red;
            }
            if(!validateEmail)
            {
                txtb_Email.BorderBrush = Brushes.Red;
            }
            return validateUsername && validateEmail;
        }
    }
}
