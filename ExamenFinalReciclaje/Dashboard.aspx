<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ExamenFinalReciclaje.Dashboard" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Panel de Reciclaje - EcoRecicla</title>
    <link rel="stylesheet" href="css/estilos.css" />
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        
        <!-- BARRA DE NAVEGACIÓN -->
        <nav class="navbar">
            <a href="Dashboard.aspx" class="navbar-brand">
                🌱 EcoRecicla Comunitario
            </a>
            <ul class="nav-links">
                <li><asp:Label ID="lblUsuarioNavbar" runat="server" ForeColor="White" Font-Bold="true"></asp:Label></li>
                <li><asp:LinkButton ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Style="color: white;">Cerrar Sesión</asp:LinkButton></li>
            </ul>
        </nav>

        <div class="container">
            
            <!-- TARJETA RESUMEN DE PUNTOS -->
            <div class="card" style="background: linear-gradient(135deg, #2e7d32 0%, #1b5e20 100%); color: white;">
                <div style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap;">
                    <div>
                        <h2 style="margin: 0; color: white;">¡Hola, <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>!</h2>
                        <p style="margin: 5px 0 0 0; opacity: 0.9;">Rol: <asp:Label ID="lblRol" runat="server"></asp:Label></p>
                    </div>
                    <div style="text-align: right; margin-top: 10px;">
                        <span style="font-size: 0.9rem; text-transform: uppercase;">Puntos Acumulados</span>
                        <div style="font-size: 2.5rem; font-weight: bold; color: var(--accent-color);">
                            <asp:Label ID="lblPuntos" runat="server">0</asp:Label> pts
                        </div>
                    </div>
                </div>
            </div>

            <!-- MENSAJES DE NOTIFICACIÓN -->
            <asp:Label ID="lblMensaje" runat="server" Font-Bold="true" Style="display: block; margin-bottom: 15px; padding: 10px; border-radius: 6px;" Visible="false"></asp:Label>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 25px;">
                
                <!-- SECCIÓN 1: REGISTRAR RECICLAJE CON FOTO -->
                <div class="card">
                    <div class="card-header">
                        <h2>Registrar Reciclaje</h2>
                    </div>

                    <div class="form-group">
                        <label for="ddlMaterial">Material a Entregar:</label>
                        <asp:DropDownList ID="ddlMaterial" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Botellas PET (Plástico) - 15 pts/kg</asp:ListItem>
                            <asp:ListItem Value="2">Cartón y Papel - 8 pts/kg</asp:ListItem>
                            <asp:ListItem Value="3">Residuos Electrónicos (RAEE) - 40 pts/Unidad</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="txtCantidad">Cantidad (Kg o Unidades):</label>
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" TextMode="Number" step="0.1" placeholder="Ej: 2.5" Required="true"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="fuFotoEvidencia">Foto de Evidencia:</label>
                        <asp:FileUpload ID="fuFotoEvidencia" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="txtObservaciones">Observaciones (Opcional):</label>
                        <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" placeholder="Ubicación de entrega o detalles..."></asp:TextBox>
                    </div>

                    <asp:Button ID="btnRegistrarEntrega" runat="server" Text="Registrar y Ganar Puntos" CssClass="btn btn-primary" Style="width: 100%; margin-top: 10px;" OnClick="btnRegistrarEntrega_Click" />
                </div>

                <!-- SECCIÓN 2: CANJEAR RECOMPENSAS -->
                <div class="card">
                    <div class="card-header">
                        <h2>Canjear Recompensas</h2>
                    </div>

                    <div class="form-group">
                        <label for="ddlRecompensa">Catálogo de Recompensas:</label>
                        <asp:DropDownList ID="ddlRecompensa" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Cuaderno Ecológico Reciclado (50 pts)</asp:ListItem>
                            <asp:ListItem Value="2">Termo de Aluminio Reutilizable (120 pts)</asp:ListItem>
                            <asp:ListItem Value="3">Bono de Descuento Supermercado (200 pts)</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div style="margin-top: 20px;">
                        <asp:Button ID="btnCanjear" runat="server" Text="Canjear Recompensa" CssClass="btn btn-accent" Style="width: 100%;" OnClick="btnCanjear_Click" />
                    </div>
                </div>

            </div>

        </div>

    </form>
</body>
</html>
