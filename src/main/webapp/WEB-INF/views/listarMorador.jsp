<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="teste">
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Morador</title>
<script src="resources/js/angular.js"></script>
<script type="text/javascript">
angular.module("teste",[]);
angular.module("teste").controller("testeCtrl", function($scope, $http){
 $scope.listar=function(){
	 $http.get('adm').success(function(adm){
		$scope.administradores=angular.fromJson(adm)});
	 };	
	 $scope.listar();
}
);
</script>
</head>
<body ng-controller="testeCtrl"  >

<table class="table-striped" width="50%"  cellspacing="2">

<tr>
<th>Numero</th>
<th> Nome Completo</th>
<th>Telefone</th>
<th>E-mail</th>
<th>Bairro</th>
<th colspan="2">Ação</th>

</tr>
<tr ng-repeat="adm in administradores">
<td>{{adm.idMorador}}</td>
<td>{{adm.nomeMorador}}</td>
<td>{{adm.telefoneMorador}}</td>
<td>{{adm.emailMorador}}</td>
<td>{{adm.bairroEnderecoMorador}}</td>
<td > <a  href="alterarmorador?numero={{adm.idMorador}}"><button class=" btn btn-warning" > Alterar</button></a><td>
<td> <a  href="excluirmorador?numero={{adm.idMorador}}"><button class=" btn btn-danger" > Excluir</button></a></td>
</tr>
</table>

</body>
</html>