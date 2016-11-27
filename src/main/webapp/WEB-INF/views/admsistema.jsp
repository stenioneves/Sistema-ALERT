<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <!DOCTYPE html>
<html lang="en">
	<head>
	<!--<script type="text/javascript">
	alert("Seu cadastro foi realizado com sucesso!!");
	window.location="http://www.devmedia.com.br/";
</script>-->
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Adm Sistema</title>
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
                      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle</span>
                        <span class="icon-bar">camilla setuba de araujo</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                      </button>
                     <a href="/"><img src="../resources/assets/img/logopequena.png"></a>
                    </div>
                    <nav class="collapse navbar-collapse" role="navigation">
                    <form class="navbar-form navbar-left">
                        <div class="input-group input-group-sm" style="max-width:360px;">
                          
                          <div class="input-group-btn">
                           
                          </div>
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                      <li>
                        <a href="../login"><i "></i> Area Morador</a>
                      </li>
                      <li>
                      <a href="sair"><i class=></i> Sair</a>
                      </li>
                      
                      
                    </ul>
                    
                      </li>
                    </ul>
                    <h4 class="col-sm-2">Matricula:&nbsp;${adm.matriculaFuncional}</h4>
                    <h4 class="col-sm-2">Nome:&nbsp;${adm.nome}</h4>
                    </nav>
                </div>
                <!-- /top nav -->


              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      	 <div class="row">
                          
                         <!-- main col left --> 
                          <div class="col-sm-14">
                           
                              
                            
                               <div class="panel panel-default">

                                    <form class="form-horizontal">
                                        <fieldset>

                                       
                        <div class="row">
                          <div class="col-sm-24">
                           <h1>Administrador Geral</h1>
                           

                          </div>
                        </div>
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-12">

                           <form class="form-horizontal">
                <fieldset>

<!-- Form Name -->
<legend></legend>

<!-- Button -->
<div class="form-group">
  <!--<label class="col-md-4 control-label" for="singlebutton">Aprovar Solicitações</label>-->
  
  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="../listaMoradores" url="bibliotecaadm.html"><button type ="button" class="btn btn-warning" >Listar Grupos do sistema</button></a></p>
  </div>
  </div>

  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="../listaMoradores" url="bibliotecaadm.html"><button type ="button" class="btn btn-warning" >Listar/Excluir Moradores</button></a></p>
  </div>
  </div>
  
  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="../procedimentos" url="bibliotecaadm.html"><button type ="button" class="btn btn-warning" >Listar Procedimentos</button></a></p>
  </div>
  </div>
  
  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="../grupo/form" url=""><button type ="button" class="btn btn-warning" >Criar Grupo</button></a></p>
  </div>
  </div>
</div>


</fieldset>
</form>
                           


                          </div>



                         
                          
                        </div>
                      
                      <hr>
                      
                      <!--<h4 class="text-center">
                      <a href="http://bootply.com/96266" target="ext">Download this Template @Bootply</a>
                      </h4>-->
                        
                      <hr>
                        
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
        </div>
    </div>
</div>


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			Update Status
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
      </div>
  </div>
  </div>
</div>
	<!-- script references -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src=" ../resources/js/bootstrap.min.js"></script>
		<script src="../resources/js/scripts.js"></script>
	</body>
</html>