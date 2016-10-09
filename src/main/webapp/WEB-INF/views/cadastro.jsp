<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br" ng-app="cadastro">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Alert</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="resources/css/styles.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/angular.js"></script>
		<script type="text/javascript">
      angular.module("cadastro", []);
      angular.module("cadastro").controller("cadastroCtrl", function($scope){
         


          });

		</script>
	</head>
	<!--  <body background="resources/img/grid.png" bgproperties="fixed">-->
	<body>
<div class="wrapper">

		<!-- tela completa-->
    <div class="box">
	<!--
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar 
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
              
              	<ul class="nav">
          			<li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
            	</ul>
               
                <ul class="nav hidden-xs" id="lg-menu">
                    <li class="active"><a href="#featured"><i class="glyphicon glyphicon-list-alt"></i> Featured</a></li>
                    <li><a href="#stories"><i class="glyphicon glyphicon-list"></i> Stories</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-paperclip"></i> Saved</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-refresh"></i> Refresh</a></li>
                </ul>
                <ul class="list-unstyled hidden-xs" id="sidebar-footer">
                    <li>
                      <a href="http://www.bootply.com"><h3>Bootstrap</h3> <i class="glyphicon glyphicon-heart-empty"></i> Bootply</a>
                    </li>
                </ul>
              -->
			  
              	<!-- tiny only nav-
              <ul class="nav visible-xs" id="xs-menu">
                  	<li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                    <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                  	<li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
                    <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                </ul>
              
            </div> -->
            <!-- /sidebar -->
          
            <!-- coluna principal -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  
              	<!-- entrar a logo-->
                    <div class="navbar-header">
                      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle</span>
                        <span class="icon-bar">camilla setuba de araujo</span>
          				<span class="icon-bar"></span>
          				<span class="icon-bar"></span>
                      </button>
                      <a href="/" class="navbar-brand logo">b</a>
                  	</div>
                  	<nav class="collapse navbar-collapse" role="navigation">
                    <form class="navbar-form navbar-left">
                        <div class="input-group input-group-sm" style="max-width:360px;">
                          <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                          <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                          </div>
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                      <!--<li>
                        <a href="/alert/"><i class="glyphicon glyphicon-home"></i> Home</a>
                      </li>
                      <li>
                        <a href="#"><i class="glyphicon glyphicon-home"></i> Sobre o Alert</a>
                      </li>
                      <li>
                        <a href="#"><i class="glyphicon glyphicon-home"></i> Quem somos</a>
                      </li>
                      <li>
                        <a href="#postModal" role="button" data-toggle="modal"><i class="glyphicon glyphicon-plus"></i> Publicação </a>
                      </li>
                      <li>
                        <a href="#"><span class="badge">Crachá</span></a>
                      </li>-->
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i></a>
                        <ul class="dropdown-menu">
                          <li><a href="/alert/">Página Inicial</a></li>
                          <li><a href="/alert/login">Tela de Login</a></li>
                          <li><a href="/alert/sobre">Sobre o Alert</a></li>
                          <li><a href="/alert/quemsomos">Quem Somos</a></li>
                         <!--  <li><a href="">More</a></li>-->
                        </ul>
                      </li>
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
                           
                              <!--<div class="panel panel-default">
                                <div class="panel-thumbnail"><img src="/assets/example/bg_5.jpg" class="img-responsive"></div>
                                <div class="panel-body">
                                  <p class="lead">Urbanization</p>
                                  <p>45 Followers, 13 Posts</p>
                                  
                                  <p>
                                    <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                                  </p>
                                </div>
                              </div> 

                           
                              <div class="panel panel-default">
                                <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootstrap Examples</h4></div>
                                  <div class="panel-body">
                                    <div class="list-group">
                                      <a href="http://bootply.com/tagged/modal" class="list-group-item">Modal / Dialog</a>
                                      <a href="http://bootply.com/tagged/datetime" class="list-group-item">Datetime Examples</a>
                                      <a href="http://bootply.com/tagged/datatable" class="list-group-item">Data Grids</a>
                                    </div>
                                  </div>
                              </div>
                           
                              <div class="well"> 
                                   <form class="form-horizontal" role="form">
                                    <h4>What's New</h4>
                                     <div class="form-group" style="padding:14px;">
                                      <textarea class="form-control" placeholder="Update your status"></textarea>
                                    </div>
                                    <button class="btn btn-primary pull-right" type="button">Post</button><ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                                  </form>
                              </div>
                           
                              <div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>More Templates</h4></div>
                                  <div class="panel-body">
                                    <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Free @Bootply</a>
                                    <div class="clearfix"></div>
                                    There a load of new free Bootstrap 3 ready templates at Bootply. All of these templates are free and don't require extensive customization to the Bootstrap baseline.
                                    <hr>
                                    <ul class="list-unstyled"><li><a href="http://www.bootply.com/templates">Dashboard</a></li><li><a href="http://www.bootply.com/templates">Darkside</a></li><li><a href="http://www.bootply.com/templates">Greenfield</a></li></ul>
                                  </div>
                              </div>
                           
                              <div class="panel panel-default">
                                <div class="panel-heading"><h4>What Is Bootstrap?</h4></div>
                               	<div class="panel-body">
                                	Bootstrap is front end frameworkto build custom web applications that are fast, responsive &amp; intuitive. It consist of CSS and HTML for typography, forms, buttons, tables, grids, and navigation along with custom-built jQuery plug-ins and support for responsive layouts. With dozens of reusable components for navigation, pagination, labels, alerts etc..                          </div>
                              </div> -->

                           		
                           
                          </div>
                          
                          <!-- main col right -->
                          <!-- <div class="col-sm-7">
                               
                                <div class="well"> 
                                   <form class="form">
                                    <h4>Sign-up</h4>
                                    <div class="input-group text-center">
                                    <input type="text" class="form-control input-lg" placeholder="Enter your email address">
                                      <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="button">OK</button></span>
                                    </div>
                                  </form>
                                </div>
                      
                               <div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootply Editor &amp; Code Library</h4></div>
                                  <div class="panel-body">
                                    <p><img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">The Bootstrap Playground</a></p>
                                    <div class="clearfix"></div>
                                    <hr>
                                    Design, build, test, and prototype using Bootstrap in real-time from your Web browser. Bootply combines the power of hand-coded HTML, CSS and JavaScript with the benefits of responsive design using Bootstrap. Find and showcase Bootstrap-ready snippets in the 100% free Bootply.com code repository.
                                  </div>
                               </div>
                            
                               <div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Stackoverflow</h4></div>
                                  <div class="panel-body">
                                    <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Keyword: Bootstrap</a>
                                    <div class="clearfix"></div>
                                    <hr>
                                    
                                    <p>If you're looking for help with Bootstrap code, the <code>twitter-bootstrap</code> tag at <a href="http://stackoverflow.com/questions/tagged/twitter-bootstrap">Stackoverflow</a> is a good place to find answers.</p>
                                    
                                    <hr>
                                    <form>
                                    <div class="input-group">
                                      <div class="input-group-btn">
                                      <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
                                      </div>
                                      <input type="text" class="form-control" placeholder="Add a comment..">
                                    </div>
                                    </form>
                                    
                                  </div>
                               </div>

                               <div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Portlet Heading</h4></div>
                                  <div class="panel-body">
                                    <ul class="list-group">
                                    <li class="list-group-item">Modals</li>
                                    <li class="list-group-item">Sliders / Carousel</li>
                                    <li class="list-group-item">Thumbnails</li>
                                    </ul>
                                  </div>
                               </div> -->
                            
                               <div class="panel panel-default" ng-controller="cadastroCtrl">

                                      <form name="valida" class="form-horizontal" method="post" action="adicionarMorador">
										<fieldset>

										<!-- Form Name -->
										<legend  id="legenda">Cadastro Morador</legend>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_nome">Nome </label>  
									  <div class="col-md-6">
									  <input id="id_nome" name="nomeMorador" type="text" placeholder="Digite o nome completo" class="form-control input-md"   required title="Digite o seu nome">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_endereco">Endereço</label>  
									  <div class="col-md-3">
									  <input id="id_endereco" name="ruaEnderecoMorador" type="text" placeholder="Logradouro" class="form-control input-md" required title="Digite o tipo de logradouro onde mora Exemplo: Av Passos,Rua feliz, Travessa dos Milagres">
									   </div>
									   <div class="col-md-3">
									     <input id="id_endereco" name="complementoEnderecoMorador" type="text"   placeholder="complemento" class="form-control input-md" required title="Digite o complemento do seu endereço">
									   </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_bairro">Bairro</label>  
									  <div class="col-md-6">
									  <input id="id_bairro" name="bairroEnderecoMorador"  type="text" placeholder="Digite seu Bairro" class="form-control input-md" required title="Digite seu Bairro">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_telefone">Telefone</label>  
									  <div class="col-md-6">
									  <input id="id_telefone" name="telefoneMorador"  required type="tel" placeholder="Digite seu telefone" class="form-control input-md" pattern="[0-9]{4,6}-[0-9]{3,4}$" title="Digite o telefone XXXX-XXXX">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_dtnasc">Data de nascimento</label>  
									  <div class="col-md-6">
									  <input id="id_dtnasc" name="dataNascMorador" type="date" placeholder="Digite sua data de nascimento" class="form-control input-md" required title="Informe sua data de Nascimento">
									    
									  </div>
									  
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="id_email">E-mail</label>  
									  <div class="col-md-6">
									  <input id="id_email" name="emailMorador" type="email" placeholder="Digite seu e-mail" class="form-control input-md" required>
									  </div>
									  </div>
                    <div class="form-group">
									  <label class="col-md-4 control-label title" for="id_senha">Senha</label>  
									  <div class="col-md-6">
									  <input id="id_senha" name="senhaMorador"  type="password" placeholder="Crie uma senha" class="form-control input-md" required title="Sua senha deve ter no minimo 6 caracteres! ">
									  </div>
									  </div>
									  <div class="form-group">
									  <label class="col-md-4 control-label title" for="sexolist">Sexo</label>
									  <div class="col-md-4">
									    <select id="sexolist" name="sexoMorador" class="form-control">
									      <option value="masculino">Masculino</option>
									      <option value="feminino">Feminino</option>
									    </select>
									  </div>
									</div>
									

									<!-- Multiple Checkboxes (inline) -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="checkboxes">Nível de risco do imóvel </label>
									  <div class="col-md-4">
									    <label class="checkbox-inline title" for="checkboxes-0">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-0" value="Baixo">
									      Baixo
									    </label>
									    <label class="checkbox-inline title" for="checkboxes-1">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-1" value="Medio">
									      Medio
									    </label>
									    <label class="checkbox-inline title" for="checkboxes-2">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-2" value="Alto">
									      Alto
									    </label>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Quantidade de morador na residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="qtdaMorador" class="form-control">
									      <option value="1">Menos de 3</option>
									      <option value="2">Mais de 3</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Já foi vitima de algum desastre natural</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="jaFoiVitima" class="form-control">
									      <option value="true">Sim</option>
									      <option value="false">Não</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Renda total da residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="rendaTotal" class="form-control">
									      <option value="1">Maior que 2 salários minimos</option>
									      <option value="2">Maior que 4 salários minimos</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Tipo de usuário</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="tipoMorador" class="form-control">
									      <option value="morador" selected>Morador</option>
									      <option value="administrador">Administrador de grupo</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Situação da casa</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="situacaoCasa" class="form-control">
									      <option value="Própria">Própria</option>
									      <option value="Alugada">Alugada</option>
									      <option value="Cedida">Cedida</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label title" for="selectbasic">Tipo de residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="tipoResidencia" class="form-control">
									      <option value="casa">Casa</option>
									      <option value="apartamento">Apartamento</option>
									      <option value="madeira" selected>Madeira</option>
									    </select>
									  </div>
									</div>

									<!-- Button -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="singlebutton"></label>
									  <div class="col-md-4">
    										<button id="singlebutton" name="singlebutton" class="btn btn-warning" >Cadastrar</button>
    										
 										</div>
									</div>

							</fieldset>
						</form>

                                <!-- <div class="panel-thumbnail"><img src="/assets/example/bg_4.jpg" class="img-responsive"></div> -->
                               <!-- <div class="panel-body">
                                  <p class="lead">Social Good</p>
                                  <p>1,200 Followers, 83 Posts</p> --> 
                                  
                                  <!--  <p>
                                    <img src="https://lh6.googleusercontent.com/-5cTTMHjjnzs/AAAAAAAAAAI/AAAAAAAAAFk/vgza68M4p2s/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                    <img src="https://lh4.googleusercontent.com/-6aFMDiaLg5M/AAAAAAAAAAI/AAAAAAAABdM/XjnG8z60Ug0/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                    <img src="https://lh4.googleusercontent.com/-9Yw2jNffJlE/AAAAAAAAAAI/AAAAAAAAAAA/u3WcFXvK-g8/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                  </p>
                                  -->
                                </div> 
                              </div>
                            
                          </div>
                       </div> <!--/row-->
                      
                        <div class="row">
                          <div class="col-sm-6">
                            <a href="#">Twitter</a> <small class="text-muted">|</small> <a href="#">Facebook</a> <small class="text-muted">|</small> <a href="#">Google+</a>
                          </div>
                        </div>
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right">Copyright&copy; 2016</a>
                            </p>
                          </div>
                        </div>
                      
                      <hr>
                      
                      <h4 class="text-center">
                      <a href="mailto:alert@gmail.com" target="ext">Contato</a>
                      </h4>
                        
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
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/scripts.js"></script>
	</body>



</html>