using System;

namespace ExamenFinalReciclaje.Modelos
{
    public class Recompensa
    {
        public int RecompensaID { get; set; }
        public string NombreRecompensa { get; set; }
        public int PuntosRequeridos { get; set; }
        public int StockDisponible { get; set; }
        public string Descripcion { get; set; }
    }
}