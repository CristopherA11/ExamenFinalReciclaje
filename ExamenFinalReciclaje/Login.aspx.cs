using System;
using ExamenFinalReciclaje.Modelos;
using ExamenFinalReciclaje.Servicios;

namespace ExamenFinalReciclaje
{
    public partial class Login : System.Web.UI.Page
    {
        private ReciclajeService _reciclajeService = new ReciclajeService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.Trim();
            string contrasena = txtContrasena.Text.Trim();

            Usuario usuarioValido = _reciclajeService.ValidarLogin(correo, contrasena);

            if (usuarioValido != null)
            {
                Session["UsuarioLogueado"] = usuarioValido;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMensaje.Text = "Correo o contraseña incorrectos. Intenta de nuevo.";
                lblMensaje.Visible = true;
            }
        }
    }
}