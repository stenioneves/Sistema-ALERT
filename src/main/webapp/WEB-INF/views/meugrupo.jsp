<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="listarmoradorgrupo">
  <head>
  <!--<script type="text/javascript">
  alert("Seu cadastro foi realizado com sucesso!!");
  window.location="http://www.devmedia.com.br/";
</script>-->
<script  src="../resources/js/angular.js">
</script>
<script  src="../resources/js/modules/listarmorador.js">
</script>
<script  src="../resources/js/modules/listarmoradorCtrl.js">
</script>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Meu Grupo</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="../resources/css/styles.css" rel="stylesheet">
  </head>
  <body background="/img/grid.png" bgproperties="fixed">
      <div class="wrapper">

          <!-- tela completa-->
          <div class="box">
          
            <!-- coluna principal -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                  <div class="navbar navbar-blue navbar-static-top">  
                <!-- entrar a logo-->
                        <div class="navbar-header">
                         
                            <a href="/"><img src="assets/img/logopequena.png"></a>
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
                                <a href="Principal.html"><i "></i> Publicações</a>
                              </li>

                            </ul>
                    
                          </nav>
                          </div>


            <div class="padding">
              <div class="full col-sm-9">
                      
                              <!-- content -->                      
                               <div class="row">
                          
                         <!-- main col left --> 
                            <div class="col-sm-14"> </div>
                              <div class="panel panel-default">
                                  <form class="form-horizontal">
                                      <fieldset>
                                          <div class="row">
                                            <div class="col-sm-24">
                                              <h5><strong>Nome Grupo(zona):</strong>&nbsp ${morador.grupo.nome}</h5>
                                               <h5><strong>Bairro :</strong>&nbsp ${morador.grupo.bairro}</h5>
                                               <h5><strong>Risco Bairro:</strong>&nbsp ${morador.grupo.nivelRiscoBairro}</h5>
                                               
                                                  
                                               
                    <fieldset>

                        <!-- Form Name -->
                        

                        <!-- Multiple Radios -->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="radios">Integrantes do seu grupo:</label>
                             <div class="col-md-4">
                             

                          <ul class="form-group" ng-controller="listarmoradorgrupoCtrl">
                              <li ng-repeat="morador in listarmoradorg">
                              ${morador.nomeMorador}
                          

                            </ul>
 
                        <!--<div class="form-group">
                          <label class="col-md-4 control-label" for="button1id"></label>
                          <div class="col-md-8">
                            <button id="button1id" name="button1id" class="btn btn-warning">Aprovar</button>
                            <button id="" name="" class="btn btn-danger">Recusar</button>
                        </div>-->
                        

                    </fieldset>      
              </div><!-- /col-9 -->
               </div><!-- /padding -->
                </div>
            <!-- /main -->
          
        </div>
    </div>
</div>

<!--

<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    
      </div>
      <div class="modal-body">
          <form class="form center-block">
            <div class="form-group">
              <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div>
          <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
            <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
      </div>  
      </div>-->
  </div>
  </div>
</div>
  <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/scripts.js"></script>
  </body>
</html>
