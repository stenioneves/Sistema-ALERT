<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="grupo" ng-controller="grupoCtrl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grupos do sistema</title>
</head>
<script src="../resources/js/modules/grupo.js"></script>

<script src="../resources/js/angular.js"></script>
<link ref="../resources/css/w3.css">
<body>

<table class="w3-table w3-bordered w3-striped">
<tr>
<th> Nome</th>
<th>Bairro</th>
<th>Nivel de Risco</th>
</tr>
<tr ng-repeat="grup in grupos">
<td>{{grup.nome}}</td>
<td>{{grup.bairro}}</td>
<td>{{grup.nivelRiscoBairro}}</td>


</tr>





</table>


</body>
</html>