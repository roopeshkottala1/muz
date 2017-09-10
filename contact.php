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
  <title>Contact Us</title>

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

    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Contact

        </h1>

      </div>

    </div>
   <!-- Contact Form -->
    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <div class="row">
      <div class="col-md-6">
        <div class="row" style="padding-left: 20px">

            <?
            $result = query("select content from pages where id = '3' limit 1");
            list($content) = $result->fetch_array();
            echo $content;
            ?>
        </div>
        <h3>Send us a Message</h3>
        <form name="sentMessage" id="contactForm" method="post" action="contact.php">
          <div class="control-group form-group">
            <div class="controls">
              <label>Name:</label>
              <input type="text" class="form-control" id="name" required
                     onInvalid="this.setCustomValidity('Please enter your name.')"
                     oninput="setCustomValidity('')" name="name">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Phone Number:</label>
              <input type="text" class="form-control" id="phone" required  onInvalid="this.setCustomValidity('Please enter your phone.')"
                     oninput="setCustomValidity('')"
                     name="phone">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Email Address:</label>
              <input type="email" class="form-control" id="email" name="email" required
                     title="Eg: firstname@gmail.com" onInvalid="this.setCustomValidity('Please enter your email.')"
                     oninput="setCustomValidity('')">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Product Name:</label>
              <input type="text" class="form-control" id="productname" name="productname">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Quantity Requirement:</label>
              <input type="text" class="form-control" id="quantity" name="quantity">
            </div>
          </div>
          <label>Other Information:</label>
          <div class="control-group form-group">
            <div class="controls">
              <textarea rows="10" cols="50" name="message" class="form-control" id="message"
                        maxlength="999" style="resize:none"></textarea>
            </div>
          </div>
          <div id="success"></div>
          <!-- For success/fail messages -->
          <button type="submit" class="btn btn-primary" name="contact" value="Send Message">Send
            Message
          </button>
        </form>
      </div>
      <div class="col-md-6">
          <?
          $result = query("select content from pages where id = '7' limit 1");
          list($content) = $result->fetch_array();
          echo $content;
          ?>
      </div>



    </div>
    <!-- /.row -->

    <hr>

    <!-- Footer -->
    <footer>
      <div class="row">
        <div class="col-lg-12">
          <div class="col-lg-12">
            <p>Copyright &copy; 2017 Muziria Farms. All rights reserved.</p>
          </div>
          <p>&nbsp;</p>
        </div>
      </div>
    </footer>

  </div>
  <!-- /.container -->

  <!-- jQuery -->
  <script src="js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="js/bootstrap.min.js"></script>

  <!-- Contact Form JavaScript -->
  <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->


</body>

</html>
