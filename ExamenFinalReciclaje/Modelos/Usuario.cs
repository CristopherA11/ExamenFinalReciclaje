using System;

namespace ExamenFinalReciclaje.Modelos
{
    public class Usuario
    {
        public int UsuarioID { get; set; }
        public int RolID { get; set; }
        public string NombreCompleto { get; set; }
        public string Correo { get; set; }
        public string ContrasenaHash { get; set; }
        public int PuntosAcumulados { get; set; }
        public string NombreRol { get; set; }
    }
}