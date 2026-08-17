using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ExamenFinalReciclaje.Servicios
{
    public class ReciclajeService
    {
        // 1. Validar el Login de usuario
        public Usuario ValidarLogin(string correo, string contrasena)
        {
            Usuario usuario = null;

            using (SqlConnection con = ObtenerConexion())
            {
                SqlCommand cmd = new SqlCommand("sp_ValidarLogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Correo", correo);
                cmd.Parameters.AddWithValue("@ContrasenaHash", contrasena);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    usuario = new Usuario
                    {
                        UsuarioID = Convert.ToInt32(dr["UsuarioID"]),
                        NombreCompleto = dr["NombreCompleto"].ToString(),
                        Correo = dr["Correo"].ToString(),
                        PuntosAcumulados = Convert.ToInt32(dr["PuntosAcumulados"]),
                        NombreRol = dr["NombreRol"].ToString()
                    };
                }
            }
            return usuario;
        }

        // 2. Registrar entrega de reciclaje con foto de evidencia
        public int RegistrarEntrega(RegistroReciclaje registro)
        {
            int puntosObtenidos = 0;

            using (SqlConnection con = ObtenerConexion())
            {
                SqlCommand cmd = new SqlCommand("sp_RegistrarReciclaje", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UsuarioID", registro.UsuarioID);
                cmd.Parameters.AddWithValue("@MaterialID", registro.MaterialID);
                cmd.Parameters.AddWithValue("@Cantidad", registro.Cantidad);
                cmd.Parameters.AddWithValue("@FotoEvidenciaURL", (object)registro.FotoEvidenciaURL ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@Observaciones", (object)registro.Observaciones ?? DBNull.Value);

                con.Open();
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    puntosObtenidos = Convert.ToInt32(result);
                }
            }
            return puntosObtenidos;
        }

        // 3. Canjear recompensa por puntos
        public bool CanjearRecompensa(int usuarioID, int recompensaID)
        {
            using (SqlConnection con = ObtenerConexion())
            {
                SqlCommand cmd = new SqlCommand("sp_CanjearRecompensa", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UsuarioID", usuarioID);
                cmd.Parameters.AddWithValue("@RecompensaID", recompensaID);

                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
        }

        public Usuario ObtenerUsuarioPorId(int usuarioId)
        {
            Usuario usuario = null;
            using (SqlConnection con = ObtenerConexion())
            {
                string query = "SELECT UsuarioID, RolID, NombreCompleto, Correo, PuntosAcumulados FROM Usuarios WHERE UsuarioID = @UsuarioID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UsuarioID", usuarioId);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    usuario = new Usuario();
                    usuario.UsuarioID = Convert.ToInt32(reader["UsuarioID"]);
                    usuario.RolID = Convert.ToInt32(reader["RolID"]);
                    usuario.NombreCompleto = reader["NombreCompleto"].ToString();
                    usuario.Correo = reader["Correo"].ToString();
                    usuario.PuntosAcumulados = Convert.ToInt32(reader["PuntosAcumulados"]);
                }
            }
            return usuario;
        }
    }
}