<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
   
<!DOCTYPE html>
<html lang="en">
  <head>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--<script type="text/javascript">
  alert("Seu cadastro foi realizado com sucesso!!");
  window.location="http://www.devmedia.com.br/";
</script>-->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Adm grupo</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="../resources/css/styles.css" rel="stylesheet">
  </head>


  <body >
<div class="wrapper">

    <!-- tela completa-->
    <div class="box">
  
            <!-- coluna principal -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                  <div class="navbar navbar-blue navbar-static-top">  
                <!-- entrar a logo-->
                    <div class="navbar-header">
                      
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                      </button>
                     <a href="/"><img src="assets/img/logopequena.png"></a>
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
                        <a href="#postModal" role="button" data-toggle="modal"><i "></i> Publicações</a>
                      </li>
                    
                      
                      
                      <li>
                        <a href="#postModal" ><i class=></i> Sair </a>
                      </li>
                      <li>
                        
                      </li>
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
                           
                              
                            
                               <div class="panel panel-default">

                                    <form class="form-horizontal">
                                        <fieldset>

                                       
                        <div class="row">
                          <div class="col-sm-24">
                           <h1>Administrador de Grupo</h1>
                             
                             ${msg}

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
   <div class="solicitacoes">
   <p><a href="aprovarsolicitacao.html" url="aprovarsolicitacao.html"><button type ="button" class="btn btn-warning">Aprovar solicitação</button></a></p>
   </div>
  </div>

  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="../cadastro" url="cadastro.html"><button type ="button" class="btn btn-warning">Novo Cadastro Morador</button></a></p>
  </div>
  </div>

  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="aprovarsolicitacao.html" url="aprovarsolicitacao.html"><button type ="button" class="btn btn-warning">Emitir Alertas</button></a></p>
  </div>
  </div>

  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="/alert/grupo/meugrupo" ><button type ="button" class="btn btn-warning">Meu Grupo</button></a></p>
  </div>
  </div>

  <div class="col-md-6">
  <div class="procedimentos">
   <p><a href="biblioteca.html" url="biblioteca.html"><button type ="button" class="btn btn-warning">Procedimentos</button></a></p>
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
  <form class="form center-block" action="../publicarg" method="post">
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
  <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/scripts.js"></script>
  </body>
</html>