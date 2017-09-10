<?
include('config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Muziria Farms</title>

  <!-- Bootstrap Core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/modern-business.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

  <style type="text/css">

    #marqueecontainer {
      position: relative;
      width: 100%; /*marquee width */
      height: 37px; /*marquee height */
      background-color: white;
      overflow: hidden;

    }

  </style>

  <script type="text/javascript">


    var delayb4scroll = 3000 //Specify initial delay before marquee starts to scroll on page (2000=2 seconds)
    var marqueespeed = 1 //Specify marquee scroll speed (larger is faster 1-10)
    var pauseit = 1 //Pause marquee onMousever (0=no. 1=yes)?

    ////NO NEED TO EDIT BELOW THIS LINE////////////

    var copyspeed = marqueespeed
    var pausespeed = (pauseit == 0) ? copyspeed : 0
    var actualheight = ''

    function scrollmarquee() {
      if (parseInt(cross_marquee.style.top) > (actualheight * (-1) + 8))
        cross_marquee.style.top = parseInt(cross_marquee.style.top) - copyspeed + "px"
      else
        cross_marquee.style.top = parseInt(marqueeheight) + 8 + "px"
    }

    function initializemarquee() {
      cross_marquee = document.getElementById("vmarquee")
      cross_marquee.style.top = 0
      marqueeheight = document.getElementById("marqueecontainer").offsetHeight
      actualheight = cross_marquee.offsetHeight
      if (window.opera || navigator.userAgent.indexOf("Netscape/7") != -1) { //if Opera or Netscape 7x, add scrollbars to scroll and exit
        cross_marquee.style.height = marqueeheight + "px"
        cross_marquee.style.overflow = "scroll"
        return
      }
      setTimeout('lefttime=setInterval("scrollmarquee()",90)', delayb4scroll)
    }

    if (window.addEventListener)
      window.addEventListener("load", initializemarquee, false)
    else if (window.attachEvent)
      window.attachEvent("onload", initializemarquee)
    else if (document.getElementById)
      window.onload = initializemarquee


  </script>
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>

        </button>


        <a id="san" class="navbar-brand" href="index.php"><img src="img/logo.png" width="77"
                                                               height="77"
                                                               class="img-responsive"></a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
         <? include('nav.php'); ?>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
  </nav>

  <!-- Header Carousel -->
  <header id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <?
        $result = query("select image from imagegallery ");
        $i = 0;
        while ($rs = $result->fetch_array(MYSQLI_ASSOC)) {
            ?>
          <li data-target="#myCarousel" data-slide-to="<?= $i ?>"
              class="<?= $i == 0 ? ' active' : '' ?>"></li>
            <?
            $i++;
        } ?>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <?
        $result = query("select image from imagegallery ");
        $i = 0;
        while ($rs = $result->fetch_array(MYSQLI_ASSOC)) {
            ?>
          <div class="item <?= $i == 0 ? ' active' : '' ?>">
            <div class="fill" style="background-image:url(pimages/<?= $rs['image'] ?>);"></div>
          </div>
            <?
            $i++;
        }
        ?>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="icon-next"></span>
    </a>

  </header>

  <!-- Page Content -->
  <div class="container">


    <div class="row">
      <div class="row">
        <div class="col-lg-12">
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-arrow-circle-right"></i>&nbsp;About us</h4>
            </div>
            <div class="panel-body">
              <p>
                  <?
                  $result = query("select content from pages where id = '1' limit 1");
                  list($content) = $result->fetch_array();
                  echo $content;
                  ?>

              </p>
              <a href="about.php" class="btn btn-default">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-arrow-circle-right"></i>&nbsp;Products </h4>
            </div>
            <div class="panel-body">
              <p><img src="img/rr.jpg" width="158" height="115" style=" float:left">
                  <?
                  $result = query("select content from pages where id = '6' limit 1");
                  list($content) = $result->fetch_array();
                  echo $content;
                  ?>
              </p>
              <a href="products.php" class="btn btn-default">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-arrow-circle-right"></i>&nbsp;Contact</h4>
            </div>
            <div class="panel-body">
              <p> <?
                  $result = query("select content from pages where id = '2' limit 1");
                  list($content) = $result->fetch_array();
                  echo $content;
                  ?></p>
              <a href="contact.php" class="btn btn-default">Learn More</a>
            </div>

          </div>


        </div>
        <div class="col-lg-12">
        </div>
      </div>

      <div class="row" style="margin: 2px;">
        <div class="row">
            <?
            $result = query("select `id`, `name`, `short_desc`,`price` from products order by rand() limit 8 ");
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $result_img = query("select filename from product_images where pid='" . $row['id'] . "' limit 1");
                list($filename) = $result_img->fetch_array();
                ?>

              <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"><img src="pimages/<?= $filename ?>" alt="">
                  <div class="caption">
                    <h3><?= $row['name'] ?></h3>
                    <p><?= cropString($row['short_desc'], 70) ?></p>
                    <p>
                      <strong style="color: green">₹<?= money_format('%!i',$row['price']) ?></strong>&nbsp; &nbsp;
                      <a href="contact.php" class="btn btn-primary">Buy
                        Now!</a>
                    </p>
                  </div>
                </div>
              </div>
                <?php
            }
            ?>
        </div>


        <footer>
          <div class="row">
            <div class=" col-lg-12">
              <a href="products.php" class="btn btn-default">Find all our products</a>
            </div>
          </div>
          <div class="row">
            <div class=" col-lg-12">
              <p>Copyright &copy; 2017 Muziria Farms. All rights reserved.</p>
            </div>
          </div>
        </footer>
      </div>


    </div>


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
      $('.carousel').carousel({
        interval: 5000 //changes the speed
      })
    </script>


</body>

</html>
