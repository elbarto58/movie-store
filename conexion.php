<?php
function conexion()
{
	$user="root";
	$pass="";
	$server="localhost";
	$db="Peliculas";
	$con=new mysqli($server,$user,$pass,$db);
	
	return $con;
}
?>