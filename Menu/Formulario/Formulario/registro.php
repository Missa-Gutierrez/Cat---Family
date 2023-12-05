<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
</head>
<body>
<?php
    if(isset($_POST["CURP"])){
    $CURP = $_POST["CURP"];
    $nombre = $_POST["nombre"];
    $direccion = $_POST["direccion"];
    $fecha_adopcion = $_POST["fecha_adopcion"];
    $telefono = $_POST["telefono"];
    $correo = $_POST["correo"];
    $enlace = mysqli_connect("localhost","root","","adopcion");
   if (!$enlace){	 
      die("Error en la conexion: " . mysqli_connect_error());
      exit;
   }
   $sql = "INSERT INTO usuario (CURP, nombre, direccion, fecha_adopcion, telefono, correo) VALUES ('$CURP', '$nombre', '$direccion', '$fecha_adopcion', '$telefono', '$correo')";
   if (mysqli_query($enlace, $sql)) {
      echo '<script language="javascript">alert("Guardado con éxito.");</script>';
	   header("refresh:1;url=../Formulario.html");
      mysqli_close($enlace);
   } else {
      echo '<script language="javascript">alert("Problemas con el servidor, intentelo más tarde.");</script>';
      header("refresh:1;url=../Formulario.html");
      mysqli_close($enlace);
   }
   }
?>
</body>
</html>