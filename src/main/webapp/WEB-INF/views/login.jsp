<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-br" >
  <head>
    <meta charset="UTF-8">
    <title>Login </title>
    
    
    
    
        <link rel="stylesheet" href="resources/css/stylelogin.css">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

    
    
    
  </head>

  <body id="cop">

  
<div class="container">
	<section id="content">
		<form:form class="form-horizontal" action="${spring:mvcUrl('AC#efetuarLogin').build()}" method="POST" commandName="morador">
			<h1>Acesse</h1>
			 ${erro}
			<div>
				<form:input type="text" path="emailMorador" placeholder="E-mail" required="" id="username" /><br>
				<form:errors path="emailMorador"/>
			</div>
			<div>
				<form:input type="password" path="senhaMorador" placeholder="Senha" required="" id="password" /><br>
				<form:errors path="senhaMorador"/>
			</div>
			<div>
				<input type="submit" value="Enviar" />
				
			</div>
			<div>
			<a href="/alert/cadastro.html">Cadastre-se</a>
			</div>
		</form:form><!-- form -->
		<div class="button">
			
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
    
        <script src="resources/js/index.js"></script>

    
    
    
  </body>
</html>
