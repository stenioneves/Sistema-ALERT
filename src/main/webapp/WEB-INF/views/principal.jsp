<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="pt-br" ng-app="listarpublicacao" ng-controller="listarpublicacaoCtrl">
	<head>
	<script src="resources/js/angular.js"></script>
		
		<script src="resources/js/modules/pubCtrl.js"></script>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Principal</title>
		<link href="resources/css/w3.css" rel="stylesheet">
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="resources/css/stylesp.css" rel="stylesheet">
	</head>
	<body SCROLL="no" ng-controller="listarpublicacaoCtrl">
<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
              
              	<ul class="nav">
          			<li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
            	</ul>
               
                <ul class="nav hidden-xs" id="lg-menu">
                    <li class="active"><a href="principal/meuperfil"><i class="glyphicon glyphicon-list-alt"></i> Meus Dados</a></li>
                    <li><a href="procedimentos.html"><i class="glyphicon glyphicon-list"></i> Biblioteca</a></li>
                    <li><a href="quemsomos.html"><i class="glyphicon glyphicon-paperclip"></i> Quem somos</a></li>
                    <li><a href="sobre.html"><i class="glyphicon glyphicon-refresh"></i> Sobre o Alert</a></li>
                </ul>
                <ul class="list-unstyled hidden-xs" id="sidebar-footer">
                    <li>
                     
                    </li>
                </ul>
              
              	<!-- tiny only nav-->
              <ul class="nav visible-xs" id="xs-menu">
                  	<li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                    <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                  	<li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
                    <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                </ul>
              
            </div>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  
                    <div class="navbar-header">
                      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                       
          				<span class="icon-bar"></span>
          				<span class="icon-bar"></span>
                      </button>
                     <a href="/"><img src="resources/assets/img/logopequena.png"></a>
                  	</div>
                  	
                    <form class="navbar-form navbar-left">
                        <div class="input-group input-group-sm" style="max-width:360px;">
                          
                          <div class="input-group-btn">
                            
                          </div>
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                     
                      <li>
                         <a href="#postModal" role="button" data-toggle="modal"><i class=></i>Publicar </a>
                      </li>
                      
                      <li>
                        <a href="principal/sair" role="button" data-toggle="modal"> Sair</a>
                      </li>
                      <li>
                        
                      </li>
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
                         <div class="col-sm-8">
                           
                              <div class="panel panel-default">
                                
                                <div class="panel-body" >
                                ${msg}
                                
                                <c:set var="infg" scope="session" value="${inf}"/>

                                <c:if test="${infg}">
                                 <div class="alert alert-warning fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Atenção!</strong> Você não está associado a um grupo, logo, não verá nenhuma publicação de sua autoria ou dos outro.
     Entre em contato com seu lider comunitário.
   
  </div>
                                
                                </c:if>
                                 
                                    <div class="texto">
									<h3 id="teste">${morador.nomeMorador} </h3>
									<h4 id="teste"> <i class="fa fa-users" aria-hidden="true"></i>${morador.grupo.idGrupo}</h4>
									<h4 id="teste"> <i class="fa fa-map" aria-hidden="true"></i> ${morador.grupo.nome}</h4>
                                  
                                  </div>
                                  <input class="form-control" type="text" ng-model="criterioDeBusca" placeholder="O que você está buscando?"/>                         
                                  <p>
                                     <div id="central" ng-repeat="publicacao in publicacoes | filter:criterioDeBusca">
                                     
                                     <div id="estilo">
                                     <h3 style= "color:#e17910;"> <i class="fa fa-user"></i> {{publicacao.morador.nomeMorador}}</h3>
                                     <h4 id="titulo" style="color:#34332e;">{{publicacao.tituloPublicacao}}&ensp;{{publicacao.dataPublicacao|date:'dd/MM/yyyy'}}</h4>
                                     <h4 style="color:#34332e;">{{publicacao.textoPublicacao}}</h4>
                                     
                                     <a href="#postModal2" role="button" data-toggle="modal"><button  ng-click="editer(publicacao)"> Alterar</button></a><a href="excluirPub/{{publicacao.idPublicacao}}"><button> Excluir</button></a>
                                     
                                     </div>
                                     <br>
                                     </div>
                                     
						
						  
                                  </p>
                                </div>
                              </div>

                           
                             
                           
                          </div>
                          
                          
                          
                          
                          <!-- Publicações N -->
                          
                          
                          
                          <!-- main col right -->
                          <div class="col-sm-3">
                               
                                <div class="well"> 

                                    <div class="tempo">
                                    <iframe scrolling="no" frameborder="0" marginwidth="0" marginheight="0" width="150" height="170" src="http://selos.climatempo.com.br/selos/MostraSelo.php?CODCIDADE=321,297,306,329,317&SKIN=laranja"></iframe>
                                    </div>
                                 <form class="form">
                                   <!-- <h4>Sign-up</h4>-->
                                    <div class="input-group text-center">
                                    
                                    </div>
                                  </form>
                                </div>
                      
                               <div class="panel panel-default">



                                 <div class="panel-heading"><a href="#" class="pull-right"></a> </div>

                                 <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1893150.3007060331!2d-42.92323679999999!3d-22.066451999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1462994443095" width="230" height="210" frameborder="0" style="border:0" allowfullscreen></iframe>
                                  
                               </div>
                            
                               
                               
                            
                          </div>
                       </div><!--/row-->
                      
                       
                      
                    
                        
                      
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
  <form class="form center-block" action="${spring:mvcUrl('PC#publicar').build()}" method="post">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
       <h4 id="publica">Publicação</h4>
      </div>
       
      <div class="modal-body">
          
           <div class="form-group">
            <input type="text"  name ="tituloPublicacao" class="form-control input-lg" placeholder="Digite um titulo da sua publicação">
           </div>
            <div class="form-group">
             
              <textarea name="textoPublicacao" class="form-control input-lg" autofocus="" placeholder="Digite o texto da sua publicação"></textarea>
            </div>
          
      </div>
      <div class="modal-footer">
         <input type="submit" value="postar"> 
      </div>
  </div>
   </form>
  </div>
</div>



<div id="postModal2" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <form class="form center-block"   action="${spring:mvcUrl('PC#editarpublicacao').build()}" method="post" >
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
       <h4 id="publica">Publicação Editar</h4>
      </div>
       
      <div class="modal-body">
          
           <div class="form-group">
            <input type="text" name="idPublicacao" ng-model="publicacao.idPublicacao" class="form-control input-lg">
           
            <input type="text"  name="tituloPublicacao" ng-model ="publicacao.tituloPublicacao" class="form-control input-lg" placeholder="Digite um titulo da sua publicação">
           </div>
            <div class="form-group">
             
              <textarea name="textoPublicacao" ng-model="publicacao.textoPublicacao" class="form-control input-lg" autofocus="" placeholder="Digite o texto da sua publicação"></textarea>
            </div>
           </form>
      </div>
      <div class="modal-footer">
      <input type="submit" value="alterar Postagem">
      </div>
       </form>
  </div>
  
  </div>
    
</div>
	<!-- script references -->
		<script src="resources/js/jquery2.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/scripts.js"></script>
	</body>
</html>