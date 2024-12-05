using System;
using System.Linq;
using System.Text;
using System.Windows;
using System.ServiceModel;
using System.Windows.Data;
using System.Windows.Input;
using HiveGameWPFApp.Logic;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Threading.Tasks;
using System.Windows.Controls;
using HiveGameWPFApp.HiveProxy;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;
using System.Windows.Media.Imaging;
using System.Collections.ObjectModel;


namespace HiveGameWPFApp.Views
{
    public partial class FriendsListView : Page
    {
        private Profile[] friendsObtained;
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
                friendsObtained = friendshipManagerClient.GetAllFriends(userProfile);
                if (friendsObtained.Length == 0)
                {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogNoFriendsAdded);
                }
                else if (friendsObtained[0].idProfile == Constants.ERROR_OPERATION)
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogDataBaseError);
                } 
                else
                {
                    LoadFriendsInformation();
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

        private void LoadFriendsInformation()
        {
            LoggerManager logger = new LoggerManager(this.GetType());   
            HiveProxy.UserSessionManagerClient userSessionManagerClient = new HiveProxy.UserSessionManagerClient();
            try
            {
                for (int indexUsersProfile = 0; indexUsersProfile < friendsObtained.Length; indexUsersProfile++)
                {
                    UserSession userSession = new UserSession()
                    {
                        username = friendsObtained[indexUsersProfile].username,
                        idAccount = friendsObtained[indexUsersProfile].idAccount
                    };
                    bool stateFriend = userSessionManagerClient.VerifyConnectivity(userSession);
                    ProfileUser profileUser = new ProfileUser()
                    {
                        idProfile = friendsObtained[indexUsersProfile].idProfile,
                        idAccount = friendsObtained[indexUsersProfile].idAccount,
                        username = friendsObtained[indexUsersProfile].username,
                        imageProfile = friendsObtained[indexUsersProfile].imagePath,
                        state = stateFriend
                    };
                    lvw_FriendsList.Items.Add(profileUser);
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
                else
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
            bool usernameField = Validator.ValidateUsername(txtb_SearchFriend.Text);
            
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

        private sealed class ProfileUser
        {
            public int idProfile {  get; set; }
            public int idAccount { get; set; }
            public string username { get; set; }
            public string imageProfile { get; set; }
            public bool state { get; set; }
            public bool areFriends { get; set; }
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

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        } 

        private void ReturnMainMenu(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
        }

        public void ObtainConnectedFriends(string[] connectedFriends)
        {
            ObservableCollection<ProfileUser> usersRefreshed = new ObservableCollection<ProfileUser>();
            for (int indexListView = 0; indexListView < lvw_FriendsList.Items.Count; indexListView++) 
            {
                ProfileUser profile = lvw_FriendsList.Items[indexListView] as ProfileUser;
                if(profile != null)
                {
                    profile.state = connectedFriends.Contains(profile.username);
                }
                usersRefreshed.Add(profile);
            }
            lvw_FriendsList.Items.Clear();
            lvw_FriendsList.ItemsSource = usersRefreshed;
        }
    }
}
