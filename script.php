<?php
// Datos de conexión a la base de datos
$servername = "localhost:3306"; // Cambia esto si tu servidor MySQL está en un host diferente
$username = "root"; // Cambia esto por tu nombre de usuario de MySQL
$password = "infierno"; // Cambia esto por tu contraseña de MySQL

// Crear conexión
$conn = new mysqli($servername, $username, $password);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener las bases de datos
$sql = "SHOW DATABASES";
$result = $conn->query($sql);

// Comprobar si existen bases de datos y mostrarlas
if ($result->num_rows > 0) {
    echo "Bases de datos encontradas:<br>";
    while ($row = $result->fetch_assoc()) {
        echo $row["Database"] . "<br>";
    }
} else {
    echo "No se encontraron bases de datos.";
}

// Cerrar conexión
$conn->close();