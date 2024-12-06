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

    public partial class EditProfileView : Page
    {
        private string _imageRouteProfile = UserProfileSingleton.imageRoute;

        public EditProfileView()
        {
            InitializeComponent();
            ChargeAccountProfileInformation();
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            GoToMainMenuView();
        }

        private void ChargeAccountProfileInformation()
        {
            txtb_Description.Text = UserProfileSingleton.description;
            txtb_Nickname.Text = UserProfileSingleton.nickname;
            img_ProfilePic.Source = new BitmapImage(new Uri(UserProfileSingleton.imageRoute, UriKind.Relative));
        }

        private void GoToMainMenuView()
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }
        private void ChangeProfilePic_Click(object sender, RoutedEventArgs e)
        {
            popup_Profile.IsOpen = true;
        }

        private void ListProfilePics_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lsb_ProfilePics.SelectedItem is ListBoxItem selectedItem)
            {
                string selectedImage = selectedItem.Tag.ToString();
                img_ProfilePic.Source = new BitmapImage(new Uri(selectedImage, UriKind.Relative));
                _imageRouteProfile = selectedImage;
                popup_Profile.IsOpen = false;
            }
        }

        private void BtnConfirm_Click(object sender, RoutedEventArgs e)
        {
            RecolorFields();
            if (ValidateFields())
            {
                if (!ValidateModification())
                {
                    ModifyUserProfile();
                }
                else
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSameDataProfileModification);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        public void ModifyUserProfile()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            Profile profileToUpdate = new Profile();
            profileToUpdate.nickname = txtb_Nickname.Text;
            profileToUpdate.description = txtb_Description.Text;
            profileToUpdate.imagePath = _imageRouteProfile;
            try
            {
                HiveProxy.UserManagerClient userManager = new HiveProxy.UserManagerClient();
                int modificationResult = userManager.UpdateProfile(profileToUpdate, UserProfileSingleton.email);
                if(modificationResult == 1)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogUpdatedData);
                    UserProfileSingleton.nickname = txtb_Nickname.Text;
                    UserProfileSingleton.description = txtb_Description.Text;
                    UserProfileSingleton.imageRoute = _imageRouteProfile;
                    GoToMainMenuView();
                }else if(modificationResult == -1)
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
        }

        private bool ValidateModification()
        {
            return txtb_Description.Text == UserProfileSingleton.description && txtb_Nickname.Text == UserProfileSingleton.nickname &&
                _imageRouteProfile == UserProfileSingleton.imageRoute;
        }

        public bool ValidateFields()
        {
            bool nicknameValidation = Validator.ValidateNickName(txtb_Nickname.Text);
            bool descriptionValidation = Validator.ValidateDescription(txtb_Description.Text);
            if (!nicknameValidation)
            {
                txtb_Nickname.BorderBrush = Brushes.Red;
            }
            if (!descriptionValidation)
            {
                txtb_Description.BorderBrush = Brushes.Red;
            }
            return nicknameValidation && descriptionValidation;
        }

        public void RecolorFields()
        {
            txtb_Description.BorderBrush = Brushes.White;
            txtb_Nickname.BorderBrush = Brushes.White;
        }

    }
}
