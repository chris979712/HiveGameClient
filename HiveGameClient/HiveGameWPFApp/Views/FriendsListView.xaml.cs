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

namespace HiveGameWPFApp.Views
{
    public partial class FriendsListView : Page
    {
        public FriendsListView()
        {
            InitializeComponent();
            // Cargar datos de prueba
            CargarAmigosPrueba();
            CargarSolicitudesPrueba();
            CargarNuevosAmigosPrueba();
        }

        // Datos de ejemplo para la lista de amigos
        private void CargarAmigosPrueba()
        {
            var amigos = new List<Amigo>()
            {
                new Amigo() { Apodo = "PlayerOne", Estado = "En linea", FotoPerfil = "/Images/Avatars/Avatar1.png" },
                new Amigo() { Apodo = "GamerX", Estado = "Desconectado", FotoPerfil = "/Images/Avatars/Avatar4.png" },
                new Amigo() { Apodo = "NoobMaster", Estado = "En linea", FotoPerfil = "/Images/Avatars/Avatar2.png" }
            };

            ListaAmigos.ItemsSource = amigos;
        }

        // Datos de ejemplo para la lista de solicitudes
        private void CargarSolicitudesPrueba()
        {
            var solicitudes = new List<Solicitud>()
            {
                new Solicitud() { Nombre = "NewFriend1", FotoPerfil = "/Images/Avatars/Avatar2.png" },
                new Solicitud() { Nombre = "CoolDude99", FotoPerfil = "/Images/Avatars/Avatar6.png" }
            };

            ListaSolicitudes.ItemsSource = solicitudes;
        }

        // Datos de ejemplo para la lista de nuevos amigos
        private void CargarNuevosAmigosPrueba()
        {
            var nuevosAmigos = new List<Amigo>()
            {
                new Amigo() { Apodo = "Searcher1", Estado = "Desconectado", FotoPerfil = "/Images/Avatars/Avatar1.png" },
                new Amigo() { Apodo = "ProGamer22", Estado = "En linea", FotoPerfil = "/Images/Avatars/Avatar5.png" }
            };

            ListaNuevosAmigos.ItemsSource = nuevosAmigos;
        }

        // Clase para los amigos
        public class Amigo
        {
            public string Apodo { get; set; }
            public string Estado { get; set; }
            public string FotoPerfil { get; set; }
        }

        // Clase para las solicitudes
        public class Solicitud
        {
            public string Nombre { get; set; }
            public string FotoPerfil { get; set; }
        }

        // Muestra el panel de Amigos del Juego y oculta los demás
        private void BtnAmigosJuego_Click(object sender, RoutedEventArgs e)
        {
            PanelAmigosJuego.Visibility = Visibility.Visible;
            PanelSolicitudes.Visibility = Visibility.Collapsed;
            PanelAñadir.Visibility = Visibility.Collapsed;
        }

        // Muestra el panel de Solicitudes y oculta los demás
        private void BtnSolicitudes_Click(object sender, RoutedEventArgs e)
        {
            PanelAmigosJuego.Visibility = Visibility.Collapsed;
            PanelSolicitudes.Visibility = Visibility.Visible;
            PanelAñadir.Visibility = Visibility.Collapsed;
        }

        // Muestra el panel de Añadir y oculta los demás
        private void BtnAñadir_Click(object sender, RoutedEventArgs e)
        {
            PanelAmigosJuego.Visibility = Visibility.Collapsed;
            PanelSolicitudes.Visibility = Visibility.Collapsed;
            PanelAñadir.Visibility = Visibility.Visible;
        }
    }
}
