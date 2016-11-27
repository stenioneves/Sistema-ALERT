<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>



<html lang="pt-br">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Criar Grupo</title>
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
	
            <!-- /sidebar -->
          
            <!-- coluna principal -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  
              	<!-- entrar a logo-->
                    <div class="navbar-header">
                      
          				<span class="icon-bar"></span>
          				<span class="icon-bar"></span>
                      
                      <a href="/"><img src="../resources/assets/img/logopequena.png"></a>
                  	</div>
                  	<nav class="collapse navbar-collapse" role="navigation">
                    <form class="navbar-form navbar-left">
                        <div class="input-group input-group-sm" style="max-width:360px;">
                         
                          
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                     
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                      
                    </ul>
                  	</nav>
                </div>
                <!-- /top nav -->


              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      	 <div class="row">
                          
                         <!-- main col left --> 
                          <div class="col-sm-14">
                           

                           		
                           
                          </div>
                  
                            
                               <div class="panel panel-default">

                                      <form class="form-horizontal" action="${spring:mvcUrl('GC#criarGrupo').build()}" method="post">
										<fieldset>

										<!-- Form Name -->
										<legend>Criar Grupo</legend>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Nome </label>  
									  <div class="col-md-6">
									  <input id="textinput" name="nome" type="text" placeholder="Digite do grupo" class="form-control input-md" required="">
									    
									  </div>
									</div>

									<!-- Text input-->


									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Bairro</label>  
									  <div class="col-md-6">
									  <input id="textinput" name="bairrot" type="text" placeholder="Digite seu Bairro" class="form-control input-md" required="">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="checkboxes">Nível de risco do imóvel </label>
									  <div class="col-md-4">
									    <label class="checkbox-inline" for="checkboxes-0">
									      <input type="checkbox" name="nivelRiscoBairros" id="checkboxes-0" value="BAIXO">
									      Baixo
									    </label>
									    <label class="checkbox-inline" for="checkboxes-1">
									      <input type="checkbox" name="nivelRiscoBairro" id="checkboxes-1" value="MÉDIO">
									      Medio
									    </label>
									    <label class="checkbox-inline" for="checkboxes-2">
									      <input type="checkbox" name="nivelRiscoBairro" id="checkboxes-2" value="ALTO">
									      Alto
									    </label>
									  </div>
									</div>

									<!-- Select Basic -->
									<button  type="submit" id="singlebutton" name="singlebutton" class="btn btn-warning"> Criar</button>
							</fieldset>
						</form>

                                
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right"></a>
                            </p>
                          </div>
                        </div>
                      
                     
                        
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
        </div>
    </div>
</div>


<!--post modal-->

  
         

	<!-- script references -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="../resources/js/bootstrap.min.js"></script>
		<script src="../resources/js/scripts.js"></script>
	</body>
</html>