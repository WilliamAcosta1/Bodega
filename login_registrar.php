<?php
//Llamamos la conexion a la base de datos
include('conexion.php');
//Definimos las variables
$nombre = $_POST["txtusuario"];
$pass 	= $_POST["txtpassword"];

//Dacemos las consultas respectivas para el login
if(isset($_POST["btnloginx"]))
{
//El query hace el llamado de la tabla y los campos
$queryusuario = mysqli_query($conn,"SELECT * FROM login WHERE usu = '$nombre'");
$nr 		= mysqli_num_rows($queryusuario); 
$mostrar	= mysqli_fetch_array($queryusuario); 

//Verificamos si la contraseña es correcta y su inicio de sesion
if (($nr == 1) && (password_verify($pass,$mostrar['pass'])) )
	{ 
		session_start();
		$_SESSION['nombredelusuario']=$nombre;
		header("Location: home.html");
	}
else
//Se muestra este mensaje de error si la contraseña o usuario estan incorrectos
	{
	echo "<script> alert('Usuario o contraseña incorrecto.');window.location= 'index.html' </script>";
	}
}


if(isset($_POST["btnregistrarx"]))
{
//El query hace el llamado de la tabla y los campos
$queryusuario 	= mysqli_query($conn,"SELECT * FROM login WHERE usu = '$nombre'");
$nr 			= mysqli_num_rows($queryusuario); 

if ($nr == 0)
{
//Se hace la seguridad de la contraseña encriptandola
	$pass_fuerte = password_hash($pass, PASSWORD_BCRYPT);
	$queryregistrar = "INSERT INTO login(usu, pass) values ('$nombre','$pass_fuerte')";
	

if(mysqli_query($conn,$queryregistrar))
{
	//Se muestra el mensaje del registro exitoso
	echo "<script> alert('Usuario registrado: $nombre');window.location= 'index.html' </script>";
}
else 
{
	echo "Error: " .$queryregistrar."<br>".mysqli_error($conn);
}

}else
{
	//Se muestra un mensaje de no poder registar a un usuario ya registrado o erroneo
		echo "<script> alert('No puedes registrar a este usuario: $nombre');window.location= 'index.html' </script>";
}

} 

?>


