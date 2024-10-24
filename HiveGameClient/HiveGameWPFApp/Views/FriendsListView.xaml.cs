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
    public partial class FriendsListView : Page
    {
        public FriendsListView()
        {
            InitializeComponent();
        }

        private void LoadFriendships()
        {
            lvw_FriendsList.Items.Clear();
            HiveProxy.FriendshipManagerClient friendshipManagerClient = new HiveProxy.FriendshipManagerClient();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                Profile userProfile = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                Profile[] friendsObtained = friendshipManagerClient.GetAllFriends(userProfile);
                if (friendsObtained.Length == 0)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogNoFriendsAdded);
                }
                else if(friendsObtained[0].idProfile == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }else if (friendsObtained.Length >= Constants.DATA_MATCHES)
                {
                    LoadFriendsInformation(friendsObtained);
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

        private void LoadFriendsInformation(Profile[] usersObtained)
        {
            for (int indexUsersProfile = 0; indexUsersProfile < usersObtained.Length; indexUsersProfile++)
            {
                ProfileUser profileUser = new ProfileUser()
                {
                    idProfile = usersObtained[indexUsersProfile].idProfile,
                    idAccount = usersObtained[indexUsersProfile].idAccount,
                    username = usersObtained[indexUsersProfile].username,
                    imageProfile = usersObtained[indexUsersProfile].imagePath,
                };
                lvw_FriendsList.Items.Add(profileUser);
            }
        }

        private void LoadFriendRequests()
        {
            HiveProxy.FriendRequestManagerClient friendRequestManagerClient = new HiveProxy.FriendRequestManagerClient();
            LoggerManager logger = new LoggerManager(this.GetType());
            lvw_FriendRequests.Items.Clear();
            try
            {
                Profile userProfile = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                Profile[] friendRequestsObtained = friendRequestManagerClient.GetFriendRequests(userProfile);
                if (friendRequestsObtained.Length == Constants.NO_DATA_MATCHES)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogNoFriendRequest);
                }
                else if (friendRequestsObtained[0].idProfile == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                }
                else if (friendRequestsObtained.Length >= Constants.DATA_MATCHES)
                {
                    LoadUsersInformation(friendRequestsObtained);
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

        private void LoadUsersInformation(Profile[] usersProfile)
        {
            for(int indexUsersProfile = 0;  indexUsersProfile < usersProfile.Length; indexUsersProfile++)
            {
                ProfileUser profileUser = new ProfileUser() 
                {
                    idProfile = usersProfile[indexUsersProfile].idProfile,
                    idAccount = usersProfile[indexUsersProfile].idAccesAccount,
                    username = usersProfile[indexUsersProfile].nickname,
                    imageProfile = usersProfile[indexUsersProfile].imagePath,
                };
                lvw_FriendRequests.Items.Add(profileUser);
            }
        }

        private void SearchUser(object sender, RoutedEventArgs e)
        {
            if (VerifyField())
            {
                if (txtb_SearchFriend.Text == UserProfileSingleton.username)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogCanNotAddYourself);
                }
                else
                {
                    LoadFriendToAddSearch();
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        public bool VerifyField()
        {
            lvw_FriendToAdd.Items.Clear();
            bool usernameField = Validator.validateUsername(txtb_SearchFriend.Text);
            if (!usernameField)
            {
                txtb_SearchFriend.BorderBrush = Brushes.Red;
            }
            return usernameField;
        }

        private void LoadFriendToAddSearch()
        {
            HiveProxy.UserManagerClient userManagerClient = new HiveProxy.UserManagerClient();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                Profile userProfileObtained = userManagerClient.GetUserProfileByUsername(txtb_SearchFriend.Text);
                if (userProfileObtained.idProfile >= 1)
                {
                    Profile profileObtained = new Profile()
                    {
                        idAccesAccount = userProfileObtained.idAccesAccount
                    };
                    int verificationFriendRequestExisted = VerifyExistingFriendRequest(profileObtained);
                    bool areFriends = false;
                    if (verificationFriendRequestExisted == 0)
                    {
                        areFriends = false;
                        LoadUserInformation(userProfileObtained,areFriends);
                    }
                    else if (verificationFriendRequestExisted >= 1)
                    {
                        areFriends = true;
                        LoadUserInformation(userProfileObtained, areFriends);
                    }
                    else
                    {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                    }
                }else if(userProfileObtained.idProfile == Constants.NO_DATA_MATCHES)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogNoUsernameFound);
                }else if(userProfileObtained.idProfile == Constants.ERROR_OPERATION)
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

        private int VerifyExistingFriendRequest(Profile profileObtained)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.FriendRequestManagerClient friendRequestManagerClient = new HiveProxy.FriendRequestManagerClient();
            int verificationResult = Constants.ERROR_OPERATION;
            try
            {
                Profile searcherProfile = new Profile()
                {
                    idAccesAccount = UserProfileSingleton.idAccount
                };
                verificationResult = friendRequestManagerClient.VerifyFriendRequestRegistered(searcherProfile, profileObtained);
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
            return verificationResult;
        }

        private void AcceptFriendRequest(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            ProfileUser profileUser = clickedButton.DataContext as ProfileUser;
            if (profileUser != null)
            {
                SendAcceptFriendRequest(profileUser);
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAtObtainingUserData);
            }
        }


        private void DeclineFriendRequest(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            ProfileUser profileUser = clickedButton.DataContext as ProfileUser;
            if (profileUser != null)
            {
                SendDeclineFriendRequest(profileUser);
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAtObtainingUserData);
            }
        }


        private void SendFriendRequest(object sender, RoutedEventArgs e)
        {
            Button clickedButton = sender as Button;
            ProfileUser profileUser = clickedButton.DataContext as ProfileUser;
            if(profileUser != null)
            {
                CreateFriendRequest(profileUser);
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAtObtainingUserData);
            }
        }

        private void SendAcceptFriendRequest(ProfileUser userToResponse)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.FriendRequestManagerClient friendRequestManagerClient = new FriendRequestManagerClient();
            Profile playerOne = new Profile()
            {
                idAccesAccount = UserProfileSingleton.idAccount
            };
            Profile playerTwo = new Profile()
            {
                idAccesAccount = userToResponse.idAccount
            };
            try
            {
                int resultCreation = friendRequestManagerClient.AcceptFriendRequest(playerOne, playerTwo);
                if (resultCreation == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogAcceptFriendRequest);
                    lvw_FriendRequests.Items.Clear();
                }
                else if (resultCreation == Constants.ERROR_OPERATION)
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

        private void SendDeclineFriendRequest(ProfileUser userToResponse)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.FriendRequestManagerClient friendRequestManagerClient = new FriendRequestManagerClient();
            Profile playerOne = new Profile()
            {
                idAccesAccount = UserProfileSingleton.idAccount
            };
            Profile playerTwo = new Profile()
            {
                idAccesAccount = userToResponse.idAccount
            };
            try
            {
                int resultCreation = friendRequestManagerClient.DeclineFriendRequest(playerOne, playerTwo);
                if (resultCreation == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogDeclinedFriendRequest);
                    lvw_FriendRequests.Items.Clear();
                }
                else if (resultCreation == Constants.ERROR_OPERATION)
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

        private void CreateFriendRequest(ProfileUser userToSend)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.FriendRequestManagerClient friendRequestManagerClient = new FriendRequestManagerClient();
            Profile playerOne = new Profile()
            {
                idAccesAccount = UserProfileSingleton.idAccount
            };
            Profile playerTwo = new Profile()
            {
                idAccesAccount = userToSend.idAccount
            };
            try
            {
                int resultCreation = friendRequestManagerClient.CreateFriendRequest(playerOne, playerTwo);
                if(resultCreation == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogFriendRequestSended);
                    lvw_FriendToAdd.Items.Clear();
                }
                else if(resultCreation == Constants.ERROR_OPERATION)
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

        private void DeleteFriendClick(object sender, RoutedEventArgs e)
        {
            bool selection = DialogManager.ShowConfirmationMessageAlert(Properties.Resources.dialogConfirmFriendDelete);
            if (selection)
            {
                Button clickedButton = sender as Button;
                ProfileUser profileUser = clickedButton.DataContext as ProfileUser;
                if (profileUser != null)
                {
                    SendEliminationFriendShip(profileUser);
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAtObtainingUserData);
                }
            }
        }

        private void SendEliminationFriendShip(ProfileUser profileUser)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HiveProxy.FriendshipManagerClient friendShipManagerClient = new FriendshipManagerClient();
            Profile removingPlayer = new Profile() 
            {
                idAccesAccount = UserProfileSingleton.idAccount
            };
            Profile friendToRemove = new Profile()
            {
                idAccesAccount = profileUser.idAccount
            };
            try
            {
                int resultCreation = friendShipManagerClient.DeleteFriend(removingPlayer, friendToRemove);
                if (resultCreation == Constants.SUCCES_OPERATION)
                {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogFriendDeleted);
                    LoadFriendships();
                }
                else if (resultCreation == Constants.ERROR_OPERATION)
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

        public void LoadUserInformation(Profile profile, bool areFriends)
        {
            ProfileUser profileUser = new ProfileUser()
            {
                idProfile = profile.idProfile,
                idAccount = profile.idAccesAccount,
                username = profile.username,
                imageProfile = profile.imagePath,
                areFriends = areFriends
            };
            lvw_FriendToAdd.Items.Add(profileUser);
        }

        private class ProfileUser
        {
            public int idProfile {  get; set; }
            public int idAccount { get; set; }
            public string username { get; set; }
            public string nickname { get; set; }
            public string imageProfile { get; set; }
            public bool areFriends { get; set; }
        }

        private class FriendRequest
        {
            public int idAccount { set; get; }
            public string nickname { set; get; }
            public string imageProfile { set; get; }
        }

        private void BtnFriends_Click(object sender, RoutedEventArgs e)
        {
            stckp_GameFriends.Visibility = Visibility.Visible;
            stckp_FriendRequests.Visibility = Visibility.Collapsed;
            stck_AddNewFriend.Visibility = Visibility.Collapsed;
            LoadFriendships();
        }

        private void BtnFriendRequests_Click(object sender, RoutedEventArgs e)
        {
            stckp_GameFriends.Visibility = Visibility.Collapsed;
            stckp_FriendRequests.Visibility = Visibility.Visible;
            stck_AddNewFriend.Visibility = Visibility.Collapsed;
            LoadFriendRequests();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            stckp_GameFriends.Visibility = Visibility.Collapsed;
            stckp_FriendRequests.Visibility = Visibility.Collapsed;
            stck_AddNewFriend.Visibility = Visibility.Visible;
        }
        
        private void ReturnMainMenu(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }
    }
}
