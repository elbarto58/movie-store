<!DOCTYPE html>
<html>
<head>
	<title>Movie-Store</title>
</head>
<body>
<?php  
include("conexion.php");
 $peli=$_POST['pelicula'];


$con=conexion();
	$consulta="SELECT * from pelicula where Id_pelicula='$peli'";
	$catalogo=mysqli_query($con,$consulta);
	
	echo '<table border=1>';
	echo '<tr>';
	echo '<th id="Tp">Titulo</th>';
	echo '<th id="Dp">Director</th>';
	echo '<th id="Ap">Año</th>';
	echo '<th id="Datap">Detalles</th>';
	echo '<th id="Cp">Clasificación</th>';
	echo '<th id="Gp">Genero</th>';
	echo '</tr>';

	while ($res = mysqli_fetch_array($catalogo) ) 
	{
		echo '<tr>';
		echo '<td>'.$res['Titulo'].'</td>';
		echo '<td>'.$res['Director'].'</td>';
		echo '<td>'.$res['Ano'].'</td>';
		echo '<td>'.$res['Detalles'].'</td>';
		echo '<td>'.$res['Clasificacion'].'</td>';
		echo '<td>'.$res['Genero'].'</td>';
		echo '</tr>';
	}

	mysqli_close($con);
	echo '</table>';
//mysql_real_escape_string();
?>
</body>
</html>