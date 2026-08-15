using System;

namespace ExamenFinalReciclaje.Modelos
{
    public class MaterialReciclable
    {
        public int MaterialID { get; set; }
        public string NombreMaterial { get; set; }
        public string ContenedorDestino { get; set; }
        public int PuntosPorUnidad { get; set; }
        public string UnidadMedida { get; set; }
        public string Descripcion { get; set; }
    }
}