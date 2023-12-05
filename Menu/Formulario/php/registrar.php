<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
</head>
<body>
<?php
    if(isset($_POST["login"])){
    $login = $_POST["login"];
    $password = $_POST["password"];
    $enlace = mysqli_connect("localhost","root","","adopcion");
   if (!$enlace){	 
      die("Error en la conexion: " . mysqli_connect_error());
      exit;
   }
   $sql = "INSERT INTO USUARIOS_PASS VALUES ('$login', '$password')";
   if (mysqli_query($enlace, $sql)) {
      echo '<script language="javascript">alert("Registro guardado con éxito!");</script>';
	    header("refresh:1;url=../Registrarse.html");
      mysqli_close($enlace);
   } else {
      echo '<script language="javascript">alert("Problemas con el servidor, intentelo de nuevo o más tarde.");</script>';
        header("refresh:1;url=../Registrarse.html");
      mysqli_close($enlace);
   }
   }
?>
</body>
</html>