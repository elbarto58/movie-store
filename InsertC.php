<?php
include("conexion.php");
 
$con=conexion();
	$nom=$_POST['nombre'];
	$dir=$_POST['direccion'];
	$tel=$_POST['telefono'];
	$peli=$_POST['id_pelicula'];
	$modo=$_POST['modo'];
	$total=$_POST['total'];
	$user=$_POST['usuario'];
	$pass=$_POST['password'];

	$insertarC="INSERT into cliente (nombre,Id_direccion,telefono,Id_pelicula,Id_renta_o_venta,Id_total_pagar,usuario,password) values('$nom','$dir','$tel','$peli','$modo','$total','$user','$pass')";
	$resultado=mysqli_query($con,$insertarC) or die("Error al insertar el cliente");
	mysqli_close($con);
	echo "Cliente insertado";
?>