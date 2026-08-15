<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinalReciclaje.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar Sesión - EcoRecicla</title>
    <link rel="stylesheet" href="css/estilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <!-- BARRA DE NAVEGACIÓN -->
        <nav class="navbar">
            <a href="Default.aspx" class="navbar-brand">
                🌱 EcoRecicla Comunitario
            </a>
            <ul class="nav-links">
                <li><a href="Default.aspx">Volver al Inicio</a></li>
            </ul>
        </nav>

        <div class="container" style="max-width: 450px; margin-top: 50px;">
            <div class="card">
                <div class="card-header" style="text-align: center;">
                    <h2>Iniciar Sesión</h2>
                    <p style="color: var(--text-muted); font-size: 0.9rem;">Accede a tu panel de reciclaje</p>
                </div>

                <!-- Mensaje de Error (si falla el login) -->
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Font-Bold="true" Visible="false" Style="display: block; margin-bottom: 15px; text-align: center;"></asp:Label>

                <!-- Campo Correo -->
                <div class="form-group">
                    <label for="txtCorreo">Correo Electrónico:</label>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" placeholder="ejemplo@comunidad.com" Required="true"></asp:TextBox>
                </div>

                <!-- Campo Contraseña -->
                <div class="form-group">
                    <label for="txtContrasena">Contraseña:</label>
                    <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" TextMode="Password" placeholder="••••••••" Required="true"></asp:TextBox>
                </div>

                <!-- Botón de Iniciar Sesión -->
                <div style="margin-top: 25px;">
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-primary" Style="width: 100%;" OnClick="btnIngresar_Click" />
                </div>

                <!-- Datos de Prueba Rápidos para la Presentación/Profe -->
                <div style="margin-top: 20px; background-color: var(--bg-light); padding: 10px; border-radius: 6px; font-size: 0.85rem;">
                    <strong>Credenciales de prueba:</strong><br />
                    • Admin: <code>admin@recicla.com</code> / <code>admin123</code><br />
                    • Usuario: <code>juan.perez@comunidad.com</code> / <code>user123</code>
                </div>

            </div>
        </div>

    </form>
</body>
</html>
