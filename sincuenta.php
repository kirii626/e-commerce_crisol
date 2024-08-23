<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registro de Usuario - Librería Online</title>
  <style>
    nav ul {
        list-style-type: none; /* Eliminar viñetas */
        padding: 0;
        margin: 0;
        display: flex; /* Usar flexbox para alinear elementos en fila */
        background-color: #333; /* Color de fondo de la barra de navegación */
    }

    nav li {
        margin: 0;
    }

    nav a {
        display: block;
        color: white; /* Color del texto */
        text-align: center;
        padding: 14px 20px; /* Espaciado interno */
        text-decoration: none; /* Quitar subrayado */
    }

    nav a:hover {
        background-color: #575757; /* Color de fondo al pasar el mouse */
    }
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      padding: 20px;
    }
    form {
      max-width: 400px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    input[type=text], input[type=email], input[type=password], input[type=submit] {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    input[type=submit] {
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }
    input[type=submit]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="catalogo.html">Catálogo</a></li>
            <li><a href="autores_destacados.html">Autores Destacados</a></li>
            <li><a href="clubes.html">Clubes</a></li>
            <li><a href="curso.html">Curso</a></li>
            <li><a href="lo_vendido.html">Lo más vendido</a></li>
            <li><a href="ofertas.html">Ofertas</a></li>
            <li><a href="sobre_nosotros.html">Sobre Nosotros</a></li>
            <li><a href="preguntas.html">FAQ</a></li>
            <li><a href="cv.html">Mi CV</a></li>
            <li><a href="eventos.html">Eventos</a></li>
            <li><a href="index.html">Novedades</a></li>
            <li><a href="mapa.html">Mapa de la Página</a></li>
            <li><a href="login.html">Iniciar Sesión</a></li>
            
        </ul>
    </nav>

<h2>Registro de Usuario</h2>

<?php
// Configuración de la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "crisol";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar el formulario cuando se envía
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre_usuario = $conn->real_escape_string($_POST['nombre_usuario']);
    $email = $conn->real_escape_string($_POST['email']);
    $contrasena = $conn->real_escape_string($_POST['contrasena']); // Encriptar contraseña
    $birthdate = $conn->real_escape_string($_POST['birthdate']);

    // Inserción de datos en la base de datos
    $sql = "INSERT INTO usuario (nombre_usuario, email, contrasena, birthdate) VALUES ('$nombre_usuario', '$email', '$contrasena', '$birthdate')";

    if ($conn->query($sql) === TRUE) {
        echo "<p>Registro exitoso</p>";
    } else {
        echo "<p>Error: " . $sql . "<br>" . $conn->error . "</p>";
    }
}

// Cerrar la conexión
$conn->close();
?>

<form action="" method="post">
  <label for="nombre_usuario">Nombre Completo:</label><br>
  <input type="text" id="nombre_usuario" name="nombre_usuario" required><br>

  <label for="email">Correo Electrónico:</label><br>
  <input type="email" id="email" name="email" maxlength="50" required><br>

  <label for="contrasena">Contraseña:</label><br>
  <input type="password" id="contrasena" name="contrasena" minlength="6" maxlength="20" required><br>

  <label for="birthdate">Fecha de Nacimiento:</label><br>
  <input type="date" id="birthdate" name="birthdate" required><br>

  <input type="submit" value="Registrarse">
</form>

</body>
</html>
