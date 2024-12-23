﻿using HiveGameWPFApp.Logic;
using log4net.Repository.Hierarchy;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ServiceModel;
using HiveGameWPFApp.HiveProxy;

namespace HiveGameWPFApp
{
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
            this.Closing += MainWindowClosing;
        }

        private void IntroVideo_MediaEnded(object sender, RoutedEventArgs e)
        {

            fra_NavigationFrame.Navigate(new Views.LoginView());

        }

        private void NavigationFrame_Navigating(object sender, NavigatingCancelEventArgs e)
        {
            var storyb_FadeOutAnimation = new DoubleAnimation(1, 0, TimeSpan.FromSeconds(1.5));
            fra_NavigationFrame.BeginAnimation(Frame.OpacityProperty, storyb_FadeOutAnimation);
        }

        private void NavigationFrame_Navigated(object sender, NavigationEventArgs e)
        {
            var storyb_FadeInAnimation = new DoubleAnimation(0, 1, TimeSpan.FromSeconds(2.5));
            fra_NavigationFrame.BeginAnimation(Frame.OpacityProperty, storyb_FadeInAnimation);
        }
        
        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                UserSessionManagerClient sessionManager = new UserSessionManagerClient();
                UserSession session = VerifyExistingUserSession();
                if (Constants.IsInMatch)
                {
                    sessionManager.Disconnect(session,true);
                }
                else
                {
                    sessionManager.Disconnect(session,false);
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

        private static UserSession VerifyExistingUserSession()
        {
            int idAccount;
            string username;
            string codematch;
            UserSession sessionPlayer = new UserSession();
            if(UserProfileSingleton.username == null)
            {
                idAccount = 0;
                username = "Not online player";
                codematch = "000000";
            }
            else
            {
                idAccount = UserProfileSingleton.idAccount;
                username = UserProfileSingleton.username; 
                if(MatchSingleton.codeMatch == null)
                {
                    codematch = "000000";
                }
                else
                {
                    codematch = MatchSingleton.codeMatch;
                }
            }
            sessionPlayer.codeMatch = codematch;
            sessionPlayer.username = username;
            sessionPlayer.idAccount = idAccount;
            return sessionPlayer;
        }

    }
}