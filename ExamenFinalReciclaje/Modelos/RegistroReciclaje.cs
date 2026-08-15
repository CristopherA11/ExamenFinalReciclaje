using System;

namespace ExamenFinalReciclaje.Modelos
{
    public class RegistroReciclaje
    {
        public int RegistroID { get; set; }
        public int UsuarioID { get; set; }
        public int MaterialID { get; set; }
        public decimal Cantidad { get; set; }
        public int PuntosOtorgados { get; set; }
        public string FotoEvidenciaURL { get; set; }
        public string Observaciones { get; set; }
        public DateTime FechaRegistro { get; set; }
        public string NombreMaterial { get; set; }
    }
}