<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<!DOCTYPE html >
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title>Perfil Morador</title>

    <!-- Bootstrap core CSS -->
    <link href="../resources/assets/cssperfil/bootstrap.css" rel="stylesheet">
    <link href="../resources/assets/cssperfil/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/styles.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

   <body bgcolor="FFFFFF">
      <div class="wrapper">

          <!-- tela completa-->
          <div class="box">
          
            <!-- coluna principal -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                  <div class="navbar navbar-blue navbar-static-top">  
                <!-- entrar a logo-->
                        <div class="navbar-header">
                         
                            <a href="/alert"><img src="assets/img/logopequena.png"></a>
                        </div>
                          <nav class="collapse navbar-collapse" role="navigation">
                          <form class="navbar-form navbar-left">
                             <div class="input-group input-group-sm" style="max-width:px;">
                          
                                <div class="input-group-btn">
                           
                                </div>
                            </div>
                          </form>
                            <ul class="nav navbar-nav">
                              <li>
                                <a href="../principal"><i "></i> Principal</a>
                              </li>

                            </ul>
                    
                          </nav>
                          </div>


     <div class="container" style="margin-top: 100px;">
        <div class="col-lg-6 col-lg-offset-3">
        
            <!-- ===== vCard Navigation ===== -->
            <div class="row w">
                <div class="col-md-4">
                    <img class="img-responsive" src="assets/img/avatar.jpg" alt="">
                    <ul class="nav nav-tabs nav-stacked" id="myTab">
                      <li class="active"><a href="#about">área</a></li>
                      <li><a href="#profile">Grau de risco</a></li>
                      <li><a href="#portfolio">Contato</a></li>
                     
                    </ul>               
                </div><!-- col-md-4 -->

            <!-- ===== vCard Content ===== -->
                <div class="col-md-8">
                    <div class="tab-content">
                    
                      <!-- ===== First Tab ===== -->
                      <div class="tab-pane active" id="about">
                        <h3>${morador.nomeMorador}</h3>
                       
                        <hr>
                       <ul class="form-group">
                              <li>
                                <a href="Principal.html"><i "></i> Dados 1</a>
                              </li>

                              <li>
                                <a href="Sobre o Alert.html"><i class=></i> Dados 2</a>
                              </li>
                      
                              <li>
                                <a href="#postModal" role="button" data-toggle="modal"><i class=></i>Dados 3</a>
                              </li>

                            </ul>
                      </div><!-- tab about -->
                      
                      <!-- ===== Second Tab ===== -->
                      <div class="tab-pane" id="profile">
                        <h4><i class="icon-briefcase"></i> Grau de Risco</h4>
                         
                        </p>
                      </div><!-- Tab Profile -->
                      
                      <!-- ===== Third Tab ===== -->
                      <div class="tab-pane" id="portfolio">
                          <div class="row">
                              <div class="col-xs-6 centered">
                                <img class="img-responsive" src="assets/img/p01.png" alt="">
                                <a href="#"><h6><i class="icon-link"></i> Project Name</h6></a>
                              </div><!-- col-xs-6 -->
                              <div class="col-xs-6 centered">
                                <img class="img-responsive" src="assets/img/p02.png" alt="">
                                <a href="#"><h6><i class="icon-link"></i> Project Name</h6></a>
                              </div><!-- col-xs-6 -->
                          </div><!-- row -->
                          
                          <div class="row">
                            <br>    
                              <div class="col-xs-6 centered">
                                <img class="img-responsive" src="assets/img/p03.png" alt="">
                                <a href="#"><h6><i class="icon-link"></i> Project Name</h6></a>
                              </div><!-- col-xs-6 -->
                              <div class="col-xs-6 centered">
                                <img class="img-responsive" src="assets/img/p04.png" alt="">
                                <a href="#"><h6><i class="icon-link"></i> Project Name</h6></a>
                              </div><!-- col-xs-6 -->
                          </div><!-- row -->
                      </div><!-- /Tab Portfolio -->
                      
                      <!-- ===== Fourth Tab ===== -->
                      <div class="tab-pane" id="contact">
                          <h4>Contact Information</h4>
                          <hr>
                          <div class="row">
                              <div class="col-xs-6">
                                  <p class="sm">
                                    <i class="icon-globe"></i> - BlackTie.co <br/>
                                    <i class="icon-envelope"></i> - victoria@blacktie.co  
                                  </p>
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6">
                                  <p class="sm">
                                    <i class="icon-phone"></i> - +44 2009-4839 <br/>
                                    <i class="icon-apple"></i> - 902 3940-4439  
                                  </p>
                              </div><!-- col-xs-6 -->
                          </div><!-- row -->
                          
                          <h4>Social Links</h4>
                          <hr>
                          <div class="row">
                              <div class="col-xs-6">
                                  <p class="sm">
                                    <i class="icon-facebook"></i> - Vicky.Wallberg <br/>
                                    <i class="icon-tumblr"></i> - Love-Vicky-Site  
                                  </p>
                              </div><!-- col-xs-6 -->
                              
                              <div class="col-xs-6">
                                  <p class="sm">
                                    <i class="icon-dribbble"></i> - Vicoooria <br/>
                                    <i class="icon-twitter"></i> - @BlackTie_co  
                                  </p>
                              </div><!-- col-xs-6 -->
                          </div><!-- row -->
                      </div><!-- Tab Contact -->
                      
                    </div><!-- Tab Content -->
                </div><!-- col-md-8 -->
            </div><!-- row w -->
        </div><!-- col-lg-6 -->
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../resources/assets/js/jquery.js"></script>
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script>
    $('#myTab a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    })  
    </script>    


           
  <!-- script references -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/scripts.js"></script>
  </body>
</html>