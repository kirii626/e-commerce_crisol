<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Autores Destacados</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    nav {
      background-color: #333;
      padding: 0.5em 0;
    }

    nav ul {
      list-style-type: none; /* Eliminar viñetas */
      padding: 0;
      margin: 0;
      display: flex; /* Usar flexbox para alinear elementos en fila */
      justify-content: center; /* Centrar los elementos en la barra de navegación */
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
      font-size: 16px;
      transition: background-color 0.3s;
    }

    nav a:hover {
      background-color: #575757; /* Color de fondo al pasar el mouse */
    }

    .container {
      width: 80%;
      margin: 0 auto;
      padding: 2em 0;
    }

    h1 {
      text-align: center;
      color: #333;
    }

    h2 {
      text-align: center;
      color: #555;
    }

    .autor {
      background-color: white;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      margin: 20px 0;
      padding: 20px;
      display: flex;
      align-items: center;
      gap: 20px;
    }

    .autor img {
      border-radius: 8px;
      width: 200px;
      height: 200px;
      object-fit: cover;
    }

    .autor p {
      margin: 0;
      color: #333;
    }

    .autor hr {
      border: 0;
      border-top: 1px solid #eee;
      margin: 20px 0;
    }

    section {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      margin-top: 20px;
    }

    address {
      font-style: normal;
      color: #555;
    }
  </style>
</head>
<body>
  <nav>
    <ul>
        <li><a href="catalogo.php">Catálogo</a></li>
        <li><a href="autores_destacados.php">Autores Destacados</a></li>
        <li><a href="clubes.php">Clubes</a></li>
        <li><a href="curso.php">Curso</a></li>
        <li><a href="lo_vendido.php">Lo más vendido</a></li>
        <li><a href="ofertas.php">Ofertas</a></li>
        <li><a href="sobre_nosotros.php">Sobre Nosotros</a></li>
        <li><a href="preguntas.php">FAQ</a></li>
        <li><a href="cv.php">Mi CV</a></li>
        <li><a href="eventos.php">Eventos</a></li>
        <li><a href="index.php">Novedades</a></li>
        <li><a href="mapa.php">Mapa de la Página</a></li>
        <li><a href="login.php">Iniciar Sesión</a></li>
    </ul>
  </nav>
  
  <div class="container">
    <h1>Autores Destacados</h1>
    <h2>¡Descubre a los autores del momento! En Crisol nos enorgullece presentar una colección especial de autores cuyas obras han cautivado a lectores de todo el mundo.</h2>
    <hr>

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "crisol";

    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Consulta para obtener los autores destacados
    $sql = "SELECT nombre, apellido, nacionalidad, fecha_nacimiento, imagen_url FROM autor";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Recorrer los resultados y mostrar la información de cada autor
        while($row = $result->fetch_assoc()) {
            echo "<div class='autor'>";
            if (!empty($row["imagen_url"])) {
                echo "<img src='" . $row["imagen_url"] . "' alt='Imagen de " . $row["nombre"] . " " . $row["apellido"] . "'>";
            } else {
                echo "<img src='default_author_image.jpg' alt='Imagen de autor'>";
            }
            echo "<div>";
            echo "<p><strong>Nombre:</strong> " . $row["nombre"] . " " . $row["apellido"] . "</p>";
            echo "<p><strong>Nacionalidad:</strong> " . $row["nacionalidad"] . "</p>";
            echo "<p><strong>Fecha de Nacimiento:</strong> " . $row["fecha_nacimiento"] . "</p>";
            echo "</div>";
            echo "<hr>";
            echo "</div>";
        }
    } else {
        echo "<p>No hay autores destacados disponibles.</p>";
    }

    $conn->close();
    ?>

    <section>
      <h2>Contacto</h2>
      <address>
        <strong>Crisol - Hecho por Alejandra Kiara Justiniano Olmos</strong><br>
        La Rioja 1414<br>
        Salta, Argentina<br>
        Teléfono: 3875704663<br>
        Correo electrónico: kiaraalejandrajustinianoolmos@gmail.com
      </address>
    </section>
  </div>
</body>
</html>
