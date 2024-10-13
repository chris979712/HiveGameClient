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
using System.Windows.Shapes;

namespace HiveGameWPFApp.Views
{
    public partial class LobbyView : Page
    {
        public LobbyView()
        {
            InitializeComponent();
        }

        // Evento para manejar el envío de mensajes
        private void BtnSendMessage_Click(object sender, RoutedEventArgs e)
        {
            string message = txtMessageInput.Text;

            if (!string.IsNullOrEmpty(message))
            {
                // Crear un contenedor Border para aplicar el fondo y el borde
                Border messageContainer = new Border
                {
                    Background = new SolidColorBrush(Colors.Black),
                    BorderBrush = new SolidColorBrush(Colors.White),
                    BorderThickness = new Thickness(1),
                    Padding = new Thickness(10),
                    Margin = new Thickness(0, 5, 0, 5),
                    HorizontalAlignment = HorizontalAlignment.Right // Mensajes enviados a la derecha
                };

                // Crear el TextBlock para el contenido del mensaje
                TextBlock messageBlock = new TextBlock
                {
                    Text = message,
                    Foreground = new SolidColorBrush(Colors.White),
                    TextWrapping = TextWrapping.Wrap
                };

                // Añadir el TextBlock al contenedor Border
                messageContainer.Child = messageBlock;

                // Agregar el contenedor con el mensaje al panel de chat
                ChatMessagesPanel.Children.Add(messageContainer);

                // Limpiar el cuadro de texto después de enviar el mensaje
                txtMessageInput.Clear();
            }
        }
    }
}
