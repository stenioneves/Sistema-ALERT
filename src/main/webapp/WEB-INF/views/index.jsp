<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="resources/assets/ico/favicon.png">

    <title>Index</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/assets/css/main.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">

    <script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/modernizr.custom.js"></script>
	

	
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body data-spy="scroll" data-offset="0" data-target="#theMenu">
		
	<!-- Menu -->
	<nav class="menu" id="theMenu">
		<div class="menu-wrap">
			<h1 class="logo"><a href="index.html#home">Alert</a></h1>
			<i class="icon-remove menu-close"></i>
			<a href="#home" class="smoothScroll">Home</a>
			<a href="#about" class="smoothScroll">Venha para o ALert</a>
			<a href="#portfolio" class="smoothScroll">A sua ajuda</a>
			<a href="#contact" class="smoothScroll">Acesse</a>
			
		</div>
		
		<!-- Menu button -->
		<div id="menuToggle"><i class="icon-reorder"></i></div>
	</nav>


	
	<!-- ========== HEADER SECTION ========== -->
	<section id="home" name="home"></section>
	<div id="headerwrap">
		<div class="container">
			<div class="logo">
				<img src="resources/assets/img/logomedia.png">
			</div>
			<br>
			<div class="row">
				<h1></h1>
				<br>
				<h3></h3>
				<br>
				<br>
				<div class="col-lg-6 col-lg-offset-3">
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /headerwrap -->
	
	
	
	<!-- ========== ABOUT SECTION ========== -->
	<section id="about" name="about"></section>
	<div id="f">
		<div class="container">
			<div class="row">
				<h3>Como podemos te ajudar.</h3>
				<p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>
				
				<!-- INTRO INFORMATIO-->
				<div class="col-lg-6 col-lg-offset-3">
					<p>Estudos apontam que uma das principais causa de mortes por desatres naturais é causado pela falta de comunicação.</p>
					<p>Milhares de pessoas morrem  por falta de informação ou por falta de alerta no momento correto e oportuno.</p>
					<p>Nós do Alert trazemos uma solução para que essa barreira se torne cada vez menor. Nosso compromisso é levar a informação ao maior número de pessoas, conectando-as a uma base única de informação.<a href="http://twitter.com/BlackTie_co"></a>. Quer saber como isso irá funcionar?<a href="http://blacktie.co"></a></p>
					<p>Faça seu cadastro, acesse e contribua!!!! </p>
					<p><a href="cadastro.html" url="cadastro.html"><button type="button" class="btn btn-warning">Quero fazer parte disto</button></a></p>
				</div>								
			</div>
		</div><!-- /container -->
	</div><!-- /f -->
	

	<!-- ========== CAROUSEL SECTION ========== -->	
	<section id="portfolio" name="portfolio"></section>
	<div id="f">
		<div class="container">
			<div class="row centered">
				<h3>Momentos em que a sua colaboração com o uso do 
				Alert pode ser muito útil.</h3>
				<p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>
				
				<div class="col-lg-6 col-lg-offset-3">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active centered">
								<img class="img-responsive" src="resources/assets/img/s1.jpg" alt="">
							</div>
							
							<div class="item centered">
								<img class="img-responsive" src="resources/assets/img/s2.jpg" alt="">
							</div>
							<div class="item centered">
								<img class="img-responsive" src="resources/assets/img/s3.jpg" alt="">
							</div>
							<div class="item centered">
								<img class="img-responsive" src="resources/assets/img/s4.jpg" alt="">
							</div>
							<div class="item centered">
								<img class="img-responsive" src="resources/assets/img/s5.jpg" alt="">
							</div>
							<div class="item centered">
								<img class="img-responsive" src="resources/assets/img/s6.jpg" alt="">
							</div>
						</div>
						<br>
						<br>
						<ol class="carousel-indicators">
						    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
						   
						    
						</ol>
					</div>
				</div><!-- col-lg-8 -->
			</div><!-- row -->
		</div><!-- container -->
	</div>	<!-- f -->

	<!-- ========== CONTACT SECTION ========== -->
	<section id="contact" name="contact"></section>
	<div id="f">
		<div class="container">
			<div class="row">
				<h3>Já é cadastrado? Entre e faça a diferença!</h3>
				<p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>
				
				<div class="col-lg-6 col-lg-offset-3">
					<p><br/><br/></p>
					<p></p>
					<p><a href="login.html" url="login.html"><button type="button" class="btn btn-warning">Acesse o Alert</button></a></p>
				</div>
			</div>
		</div>
	</div>

	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/assets/js/classie.js"></script>
    <script src="resources/assets/js/bootstrap.min.js"></script>
    <script src="resources/assets/js/smoothscroll.js"></script>
	<script src="resources/assets/js/main.js"></script>
</body>
</html>
    