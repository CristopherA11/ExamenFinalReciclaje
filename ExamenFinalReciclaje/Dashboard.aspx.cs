using System;
using System.IO;
using System.Web.UI;
using ExamenFinalReciclaje.Modelos;
using ExamenFinalReciclaje.Servicios;

namespace ExamenFinalReciclaje
{
    public partial class Dashboard : System.Web.UI.Page
    {
        private ReciclajeService _reciclajeService = new ReciclajeService();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Validar si el usuario inició sesión
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                CargarDatosUsuario();
            }
        }

        private void CargarDatosUsuario()
        {
            Usuario u = (Usuario)Session["UsuarioLogueado"];
            lblNombreUsuario.Text = u.NombreCompleto;
            lblUsuarioNavbar.Text = "👤 " + u.NombreCompleto;
            lblRol.Text = u.NombreRol;
            lblPuntos.Text = u.PuntosAcumulados.ToString();
        }

        protected void btnRegistrarEntrega_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario u = (Usuario)Session["UsuarioLogueado"];
                string urlFoto = null;

                // Subida de imagen al servidor
                if (fuFotoEvidencia.HasFile)
                {
                    string extension = Path.GetExtension(fuFotoEvidencia.FileName).ToLower();
                    string nombreArchivo = "evidencia_" + DateTime.Now.ToString("yyyyMMddHHmmss") + extension;
                    string rutaGuardado = Server.MapPath("~/imagenes/" + nombreArchivo);

                    fuFotoEvidencia.SaveAs(rutaGuardado);
                    urlFoto = "imagenes/" + nombreArchivo;
                }

                RegistroReciclaje nuevoRegistro = new RegistroReciclaje
                {
                    UsuarioID = u.UsuarioID,
                    MaterialID = Convert.ToInt32(ddlMaterial.SelectedValue),
                    Cantidad = Convert.ToDecimal(txtCantidad.Text),
                    FotoEvidenciaURL = urlFoto,
                    Observaciones = txtObservaciones.Text.Trim()
                };

                int puntosGanados = _reciclajeService.RegistrarEntrega(nuevoRegistro);

                // Actualizar los puntos locales en la sesión
                u.PuntosAcumulados += puntosGanados;
                Session["UsuarioLogueado"] = u;

                lblMensaje.Text = "¡Entrega registrada exitosamente! Ganaste " + puntosGanados + " puntos.";
                lblMensaje.BackColor = System.Drawing.Color.LightGreen;
                lblMensaje.ForeColor = System.Drawing.Color.DarkGreen;
                lblMensaje.Visible = true;

                txtCantidad.Text = "";
                txtObservaciones.Text = "";
                CargarDatosUsuario();
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al registrar: " + ex.Message;
                lblMensaje.BackColor = System.Drawing.Color.MistyRose;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;
            }
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario u = (Usuario)Session["UsuarioLogueado"];
                int recompensaID = Convert.ToInt32(ddlRecompensa.SelectedValue);

                bool exito = _reciclajeService.CanjearRecompensa(u.UsuarioID, recompensaID);

                if (exito)
                {
                    lblMensaje.Text = "¡Recompensa canjeada con éxito!";
                    lblMensaje.BackColor = System.Drawing.Color.LightGreen;
                    lblMensaje.ForeColor = System.Drawing.Color.DarkGreen;
                    lblMensaje.Visible = true;

                    // Opción Ideal: Obtener los datos frescos del usuario usando su ID
                    Usuario actualizado = _reciclajeService.ObtenerUsuarioPorId(u.UsuarioID);

                    if (actualizado != null)
                    {
                        Session["UsuarioLogueado"] = actualizado;
                        CargarDatosUsuario(); // Actualiza la UI con los nuevos puntos
                    }
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al canjear: " + ex.Message;
                lblMensaje.BackColor = System.Drawing.Color.MistyRose;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}