<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Cadastro</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="resources/css/styles.css" rel="stylesheet">
	</head>
	<body >
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
                      </button>
                      <a href="/alert"><img src="resources/assets/img/logopequena.png"></a>
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

                                      <form class="form-horizontal"method="post" action="adicionarMorador">
										<fieldset>

										<!-- Form Name -->
										<legend>cadastro de Morador</legend>
										
									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Nome </label>  
									  <div class="col-md-6">
									  <input id="textinput" name="nomeMorador" type="text" placeholder="Digite o nome completo" class="form-control input-md" required="" title="Seu nome completo">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Endereço</label>  
									  <div class="col-md-3">
									  <input id="textinput" name="ruaEnderecoMorador" type="text" placeholder="Digite sua rua" class="form-control input-md" required="" title="Nome da sua Rua" >
									    </div>
											<div class="col-md-3">
									     <input id="id_endereco" name="complementoEnderecoMorador" type="text"   placeholder="complemento" class="form-control input-md" required title="Digite o complemento do seu endereço">
									   </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Bairro</label>  
									  <div class="col-md-6">
									  <input id="textinput" name="bairroEnderecoMorador" type="text" placeholder="Digite seu Bairro" class="form-control input-md" required="" title="Nome do seu Bairro">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Telefone</label>  
									  <div class="col-md-6">
									  <input id="textinput" name="telefoneMorador" type="tel" placeholder="Digite seu telefone" class="form-control input-md" placeholder="Digite seu telefone" class="form-control input-md" pattern="[0-9]{4,6}-[0-9]{3,4}$" title="Digite o telefone XXXX-XXXX">
									    
									  </div>
									</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">Data de nascimento</label>  
									  <div class="col-md-6">
									  <input id="textinput" name="dataNascMorador" type="date" placeholder="Digite sua data de nascimento" class="form-control input-md" required="" title="Formato DD/MM/AAAA" pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$">
									    
									  </div>
									</div>

									<div class="form-group">
											  <label class="col-md-4 control-label" for="selectbasic">Sexo</label>
											  <div class="col-md-4">
											    <select id="selectbasic" name="sexoMorador" class="form-control">
											      <option value="Masculino">Masculino</option>
											      <option value="Feminino">Feminino</option>
											    </select>
											  </div>
											</div>

									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">E-mail</label>  
									  <div class="col-md-6">
									  <input id="textinput" name="emailMorador" type="email" placeholder="Digite seu e-mail" class="form-control input-md" required="" title="Seu e-mail">
									    
									  </div>
									</div>

									<!-- Multiple Checkboxes (inline) -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="checkboxes">Nível de risco do imóvel </label>
									  <div class="col-md-4">
									    <label class="checkbox-inline" for="checkboxes-0">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-0" value="Baixo">
									      Baixo
									    </label>
									    <label class="checkbox-inline" for="checkboxes-1">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-1" value="Medio">
									      Medio
									    </label>
									    <label class="checkbox-inline" for="checkboxes-2">
									      <input type="checkbox" name="nivelRiscoImovel" id="checkboxes-2" value="Alto">
									      Alto
									    </label>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Quantidade de morador na residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="qtdaMorador" class="form-control">
									      <option value="1">Menos de 3</option>
									      <option value="2">Mais de 3</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Já foi vitima de algum desastre natural</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="jaFoiVitima" class="form-control">
									      <option value="true">Sim</option>
									      <option value="false">Não</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Renda total da residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="rendaTotal" class="form-control">
									      <option value="1">Maior que 2 salários minimos</option>
									      <option value="2">Maior que 4 salários minimos</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Tipo de usuário</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="tipoMorador" class="form-control">
									      <option value="Morador">Morador</option>
									      <option value="Administrador">Administrador de grupo</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Situação da casa</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="situacaoCasa" class="form-control">
									      <option value="Propria">Própria</option>
									      <option value="Alugada">Alugada</option>
									      <option value="Cedida">Cedida</option>
									    </select>
									  </div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="selectbasic">Tipo de residencia</label>
									  <div class="col-md-4">
									    <select id="selectbasic" name="tipoResidencia" class="form-control">
									      <option value="Casa">Casa</option>
									      <option value="Apartamento">Apartamento</option>
									    </select>
									  </div>
									</div>

									

                  <form class="form-horizontal">


                <!-- Password input-->
                  <div class="form-group">
                   <label class="col-md-4 control-label" for="passwordinput">Senha</label>
                  <div class="col-md-4">
                 <input id="passwordinput" name="senhaMorador" type="password" placeholder="Digite uma senha" class="form-control input-md" required="" title="Crie sua senha de acesso">
    
                </div>
                </div>

                   <!-- Button -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Cadastrar</label>
                    <div class="col-md-4">
                      <button id="singlebutton" name="singlebutton" class="btn btn-warning">Cadastrar</button>
                    </div>
                  </div>




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

  
         
			
      </div>
      <div class="modal-body">
          
             
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div>
          
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