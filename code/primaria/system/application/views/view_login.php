<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">

  <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
       Remove this if you use the .htaccess -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title> Login | Primaria </title>
  <meta name="description" content="">
  <meta name="author" content="LAG">

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Place favicon.ico & apple-touch-icon.png in the root of your domain and delete these references >
  <link rel="shortcut icon" href="<?php  base_url(); ?>system/application/views/images/icono_marcate.png">
  <link rel="apple-touch-icon" href="<?php base_url(); ?>system/application/views/images/icono_marcate.png"-->


  <!-- CSS: implied media="all" -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>system/application/views/css/colors.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>system/application/views/css/screen.css">
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;v2" rel="stylesheet" type="text/css">
  
  
 
          
  <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
  <script src="<?php echo base_url(); ?>system/application/views/js/libs/modernizr-1.7.min.js"></script>

</head>

<body class="login">

	        
        <div class="login-wrapper">
        	<div style="margin-top:20px; margin-left:15px;" align="center">
                <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>system/application/views/images/lapiz.png" /></a>
            </div>
            


            <article class="content-box minimizer">
			<header>
				<h2>Log in.</h2>
			</header>
			<section>
				<div id="logform">
					<form form method="post" id="formLogin" action="" onSubmit="return false;">
						<dl>
							<dt>
								<label>Usuario</label>
							</dt>
							<dd>
								<input type="text" name="userAdminL" id="userAdminL">
							</dd>
							<dt>
								<label>Password</label>
							</dt>
							<dd>
								<input type="password" name="passAdminL" id="passAdminL">
							</dd>
						</dl>
						<button type="submit" id="loginSite">Entrar</button>
					</form>
				</div>
			</section>
			<footer>
            	<div id="errorLogin" style="text-align:right; display:none;" class="notification error">
                </div>
			</footer>
		</article>
            
    </div> <!-- END OF CONTAINER -->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo base_url(); ?>system/application/views/js/libs/jquery-1.5.1.min.js">\x3C/script>')</script>
    <script src="<?php echo base_url(); ?>system/application/views/js/libs/jquery-ui-1.8.11.custom.min.js"></script>
    <script src="<?php echo base_url(); ?>system/application/views/js/login.js"></script>
    
</body>
</html>