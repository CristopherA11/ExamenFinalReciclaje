using System.Data.SqlClient;

namespace ExamenFinalReciclaje.Datos
{
    public class ConexionBD
    {
        // Cadena configurada exactamente para tu servidor .\SQLEXPRESS01
        private readonly string CadenaConexion = @"Server=.\SQLEXPRESS01;Database=SistemaReciclajeComunitario;Integrated Security=True;TrustServerCertificate=True;";

        public SqlConnection ObtenerConexion()
        {
            return new SqlConnection(CadenaConexion);
        }
    }
}