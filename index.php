<!DOCTYPE html>
<html>
<head>
    <title>Movie-Store</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="estilo.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css" rel="stylesheet">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
     $('#myCarousel').carousel({
    interval: 3000,
 })
</script>
</head>
<body>
   <div >
            <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="mask flex-center">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7 col-12 order-md-1 order-2">
              <h4>El mejor sitio</h4>
              <p>Con las mejores peliculas del día.</p>
               </div>
            <div class="col-md-5 col-12 order-md-2 order-1"><img src="img/f1.png" class="mx-auto" alt="slide"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="mask flex-center">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7 col-12 order-md-1 order-2">
              <h4>Compra <br>
                o renta</h4>
              <p>Y disfuta en la mejor calidad desde tu hogar.</p>
               </div>
            <div class="col-md-5 col-12 order-md-2 order-1"><img src="img/f2.png" class="mx-auto" alt="slide"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="mask flex-center">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7 col-12 order-md-1 order-2">
              <h4>Registrate <br>
                </h4>
              <p>Obten ofertas y promociones.</p>
              </div>
            <div class="col-md-5 col-12 order-md-2 order-1"><img src="img/f3.png" class="mx-auto" alt="slide"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
    </div>
    <!--Navbaar  -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor01">
          <ul class="navbar-nav mr-auto col-sm-3 col-md-3">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
           
          </ul>
          <form class="form-inline my-2 my-lg-0" action="login.html">
            <button class="btn btn-secondary my-2 my-sm-0" type="submit" data-toggle="modal" >Login</button>
          </form>
        </div>
    </nav>
<div class="container">
    <br>
    <br>
    <div class="row" id="ads">

 <?php 
 include("CatalogoP.php");
 while ($res = mysqli_fetch_array($catalogo) ) 
    {
 ?>        
    <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge"><?php echo $res['Titulo'] ?> </span>
                <span class="card-notify-year"><?php echo $res['Ano'] ?></span>
                <img class="img-fluid centrado" src="img/<?php echo $res['img'] ?>" width="200" height="300" alt="Alternate Text" />
            </div>
            <form action=" pelicula.php" method="POST">
            <div class="card-image-overlay m-auto text-center">
                <input id=" " class="card-detail-badge" type="submit" name="renta" value="Rentar">
                <input id=" " class="card-detail-badge" type="submit" name="comprar" value="Comprar">
            </div>
            
              <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <input  id="pelicula" type="hidden" name="pelicula" value="<?php echo $res['Id_pelicula'] ?>">
                    <a href=""><h5><input class="card-detail-badge" type="submit" value="Ver más detalles"></h5></a>
                </div>
              </div>
            </form>
            
        </div>
    </div>
<?php 
    } 
?>   

</div>
</div>

</body>
</html>