using System.Windows;

namespace HiveGameWPFApp.Logic
{
    public static class DialogManager
    {
        public static void ShowErrorMessageAlert(string errorMessage)
        {
            MessageBox.Show(errorMessage, Properties.Resources.dialogTitleError, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        public static void ShowWarningMessageAlert(string warningMessage)
        {
            MessageBox.Show(warningMessage, Properties.Resources.dialogTitleWarning, MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        public static void ShowSuccessMessageAlert(string successMessage)
        {
            MessageBox.Show(successMessage, Properties.Resources.dialogTitleSucces, MessageBoxButton.OK, MessageBoxImage.Information);
        }

        public static void ShowConfirmationMessageAlert(string confirmMessage)
        {
            MessageBox.Show(confirmMessage, Properties.Resources.dialogTitleConfirmation, MessageBoxButton.OK, MessageBoxImage.Question);
        }
    }
}
