<?php 
include("conexion.php");

$con=conexion();

	$user=$_POST['usuario'];
	$pass=$_POST['password'];

$res=mysqli_query($con,"SELECT * from cliente where usuario='$user' and password='$pass'") or die("Error al comparar los datos");

$row=mysqli_fetch_array($res);
if ($row['usuario']==$user && $row['password']==$pass ) {
	//echo "Loegin success ".$row['usuario']=$user;
	header('Location: index.php');
}else{
	echo "Verifica tus datos";
}

?>