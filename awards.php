<? include('config.php');
//INSERT INTO `pages` (`id`, `title`, `content`) VALUES (NULL, 'gallery', 'gallery content comes here');
//INSERT INTO `pages` (`id`, `title`, `content`) VALUES (NULL, 'awards', 'awards content comes here')
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

  <!-- Page Content -->
  <div class="container">

        <!-- Title -->
    <div class="row">
      <hr>
      <div class="col-lg-12">
        <h3>Our Awards</h3>
      </div>
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
          <?
          $result = query("select content from pages where id = '9' limit 1");
          list($content) = $result->fetch_array();
          echo $content;
          ?>
      </div>
    </div>
    <!-- Page Features --><!-- /.row -->

    <hr>

    <!-- Footer -->
    <footer>
      <div class="row">
        <div class=" col-lg-12">
          <p>Copyright &copy; 2017 Muziria Farms. All rights reserved.</p>
        </div>
      </div>
    </footer>

  </div>
  <!-- /.container -->

  <!-- jQuery -->
  <script src="js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="js/bootstrap.min.js"></script>


</body>

</html>
