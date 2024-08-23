<?php
$servername = "localhost:9999"; // Puerto incorrecto
$username = "root"; // Usuario por defecto de MySQL en XAMPP
$password = ""; // Sin contraseña por defecto en XAMPP
$dbname = "crisol"; // Cambia esto por el nombre de tu base de datos

try {
    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    echo "Inicio de sesión exitoso";
} catch (Exception $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
