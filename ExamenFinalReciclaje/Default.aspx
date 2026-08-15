<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExamenFinalReciclaje.Default" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio - Programa Recicla en tu Centro</title>
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
                <li><a href="Default.aspx">Inicio</a></li>
                <li><a href="Login.aspx" class="btn btn-primary" style="padding: 6px 15px; color: white;">Iniciar Sesión</a></li>
            </ul>
        </nav>

        <div class="container" style="max-width: 1100px; margin: 0 auto; padding: 20px;">
            
            <!-- SECCIÓN PRINCIPAL / HERO -->
            <div class="card" style="text-align: center; padding: 40px 20px; background: linear-gradient(135deg, #e8f5e9 0%, #c8e6c9 100%); border-radius: 8px; margin-bottom: 30px;">
                <h1 style="color: #2e7d32; font-size: 2.3rem; margin-bottom: 10px;">
                    Programa de Reciclaje y Gestión Ambiental
                </h1>
                <p style="font-size: 1.15rem; color: #1b5e20; max-width: 800px; margin: 0 auto 20px auto; line-height: 1.5;">
                    Rompamos con la cultura de "usar y tirar". Promovemos la economía circular reduciendo, reutilizando y reciclando los residuos para alargar su vida útil y proteger el medio ambiente.
                </p>
                <a href="Login.aspx" class="btn btn-accent" style="font-size: 1.1rem; padding: 12px 30px; background-color: #2e7d32; color: white; text-decoration: none; border-radius: 5px; display: inline-block;">
                    ¡Registra tus Entrega y Acumula Puntos!
                </a>
            </div>

            <!-- GUÍA DETALLADA DE SEPARACIÓN DE RESIDUOS -->
            <h2 style="text-align: center; margin: 30px 0 20px 0; color: #2e7d32;">
                Guía Rápida de Clasificación de Residuos
            </h2>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 20px; margin-bottom: 40px;">
                
                <!-- Papelera Amarilla -->
                <div class="card" style="border-top: 6px solid #fbc02d; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                    <h3 style="color: #f57f17; margin-top: 0;">🟡 Papelera Amarilla</h3>
                    <p style="font-size: 0.95rem; font-weight: bold; color: #555;">Envases Ligeros y Plásticos</p>
                    <ul style="padding-left: 20px; font-size: 0.9rem; color: #444; line-height: 1.4;">
                        <li>Botellas y envases de plástico</li>
                        <li>Latas de bebidas y aluminio</li>
                        <li>Briks de jugos o leche</li>
                        <li>Envoltorios de galletas / meriendas</li>
                        <li>Vasos y platos de plástico limpio</li>
                    </ul>
                </div>

                <!-- Papelera Azul -->
                <div class="card" style="border-top: 6px solid #1976d2; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                    <h3 style="color: #0d47a1; margin-top: 0;">🔵 Papelera Azul</h3>
                    <p style="font-size: 0.95rem; font-weight: bold; color: #555;">Papel y Cartón</p>
                    <ul style="padding-left: 20px; font-size: 0.9rem; color: #444; line-height: 1.4;">
                        <li>Folios y hojas impresas</li>
                        <li>Cuadernos (sin espiral de metal/plástico)</li>
                        <li>Cartulinas y carpetas de papel</li>
                        <li>Sobres de papel</li>
                        <li>Cajas de cartón (plegadas)</li>
                    </ul>
                </div>

                <!-- Papelera de Restos -->
                <div class="card" style="border-top: 6px solid #757575; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                    <h3 style="color: #424242; margin-top: 0;">⚪ Papelera de Restos</h3>
                    <p style="font-size: 0.95rem; font-weight: bold; color: #555;">Basura no Reciclable (Impropios)</p>
                    <ul style="padding-left: 20px; font-size: 0.9rem; color: #444; line-height: 1.4;">
                        <li>Cajas de pizza o empaques manchados</li>
                        <li>Restos de sacapuntas</li>
                        <li>Celo, cinta adhesiva y bolígrafos</li>
                        <li>Servilletas y pañuelos usados</li>
                        <li>Cubiertos de plástico descartables</li>
                    </ul>
                </div>

                <!-- Punto Limpio / RAEE -->
                <div class="card" style="border-top: 6px solid #e65100; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                    <h3 style="color: #bf360c; margin-top: 0;">🔴 Punto Limpio / RAEE</h3>
                    <p style="font-size: 0.95rem; font-weight: bold; color: #555;">Residuos Especiales</p>
                    <ul style="padding-left: 20px; font-size: 0.9rem; color: #444; line-height: 1.4;">
                        <li>Pilas y baterías usadas</li>
                        <li>Calculadoras y aparatos electrónicos</li>
                        <li>Tijeras, reglas o compases metálicos</li>
                        <li>Tóneres y cartuchos de impresora</li>
                        <li>Cables y cargadores</li>
                    </ul>
                </div>

            </div>

            <!-- ESTRATEGIAS Y BUENAS PRÁCTICAS -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(450px, 1fr)); gap: 20px; margin-bottom: 30px;">
                
                <!-- Buenas Prácticas Ambientales -->
                <div class="card" style="padding: 25px; background: #f1f8e9; border-radius: 8px;">
                    <h3 style="color: #33691e; margin-top: 0;">🍃 Buenas Prácticas en el Centro</h3>
                    <ul style="padding-left: 20px; font-size: 0.95rem; color: #333; line-height: 1.6;">
                        <li><strong>Desayunos sostenibles:</strong> Trae la merienda o comida en fiambreras reutilizables.</li>
                        <li><strong>Ahorro de papel:</strong> Imprime solo lo necesario, hazlo a doble cara o usa papel reutilizable.</li>
                        <li><strong>Ahorro energético:</strong> Apaga la pantalla del ordenador y las luces al salir del aula.</li>
                        <li><strong>Cartón:</strong> Pliega siempre las cajas de cartón antes de ponerlas en la papelera azul.</li>
                    </ul>
                </div>

                <!-- Concienciación y Apoyo -->
                <div class="card" style="padding: 25px; background: #e3f2fd; border-radius: 8px;">
                    <h3 style="color: #0d47a1; margin-top: 0;">👥 Apoyo e Información en el Centro</h3>
                    <p style="font-size: 0.95rem; color: #333; line-height: 1.5;">
                        <strong>Patrullas Verdes:</strong> Equipos de estudiantes y profesores están disponibles durante los recreos para guiarte en el uso de los contenedores y resolver tus dudas.
                    </p>
                    <p style="font-size: 0.95rem; color: #333; line-height: 1.5;">
                        <strong>Evita los "Impropios":</strong> Recuerda que depositar un residuo equivocado en un contenedor daña todo el proceso de reciclaje.
                    </p>
                    <p style="font-size: 0.9rem; background: #bbdefb; padding: 10px; border-radius: 5px; color: #0d47a1;">
                        💡 <strong>¿Dudas sobre un material?</strong> Consulta con el asistente virtual AIR-E de Ecoembes.
                    </p>
                </div>

            </div>

            <!-- PASOS DEL PROGRAMA -->
            <div class="card" style="padding: 30px; text-align: center; background: #fff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.05);">
                <h2 style="color: #2e7d32; margin-top: 0;">¿Cómo participar en el Programa de Puntos?</h2>
                <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; margin-top: 20px;">
                    <div>
                        <div style="font-size: 2.2rem;">1️⃣</div>
                        <strong>Clasifica</strong>
                        <p style="font-size: 0.85rem; color: #666;">Separa tus residuos siguiendo esta guía rápida.</p>
                    </div>
                    <div>
                        <div style="font-size: 2.2rem;">2️⃣</div>
                        <strong>Registra</strong>
                        <p style="font-size: 0.85rem; color: #666;">Inicia sesión en la plataforma y registra el peso o cantidad entregada.</p>
                    </div>
                    <div>
                        <div style="font-size: 2.2rem;">3️⃣</div>
                        <strong>Suma Puntos</strong>
                        <p style="font-size: 0.85rem; color: #666;">Acumula puntos ecológicos según la categoría del material.</p>
                    </div>
                    <div>
                        <div style="font-size: 2.2rem;">4️⃣</div>
                        <strong>Canjea</strong>
                        <p style="font-size: 0.85rem; color: #666;">Canjea tus puntos por materiales escolares y premios sostenibles.</p>
                    </div>
                </div>
            </div>

        </div>

    </form>
</body>
</html>