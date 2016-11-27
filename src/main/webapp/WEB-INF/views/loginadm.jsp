<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<title>Administração</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/w3.css">
<body>

<header class="w3-container w3-orange">
  <h1>Login Administrador</h1>
</header>

<div class="w3-container w3-half w3-margin-top">

<form class="w3-container w3-card-4" action="${spring:mvcUrl('AGC#efetuarLogin').build()}" method="POST">
 ${msg}
<p>
<input class="w3-input" type="text" name="matriculaFuncional" style="width:90%" required>
<label class="w3-label w3-validate">Matricula</label></p>
<p>
<input class="w3-input" type="password" name="senhaAdm" style="width:90%" required>
<label class="w3-label w3-validate">Senha</label></p>


<p>
<button class="w3-btn w3-section w3-orange w3-ripple">Acessar </button></p>

</form>

</div>

</body>
</html> 
    