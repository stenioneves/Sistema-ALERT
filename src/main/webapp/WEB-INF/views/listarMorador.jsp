<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="listarmorador">
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Morador</title>
<script src="resources/js/angular.js"></script>
<script src="resources/js/modules/listarmorador.js">
</script>
<script src="resources/js/modules/listarmoradorCtrl.js"></script>
</head>
<body ng-controller="listarmoradorCtrl"  >

<table class=" table table-striped" width="30%"  cellspacing="2">

<tr>
<th>Numero</th>
<th> Nome Completo</th>
<th>Telefone</th>
<th>E-mail</th>
<th>Bairro</th>
<th colspan="3">Ação</th>

</tr>
<tr ng-repeat="mora in moradores">
<td>{{mora.idMorador}}</td>
<td>{{mora.nomeMorador}}</td>
<td>{{mora.telefoneMorador}}</td>
<td>{{mora.emailMorador}}</td>
<td>{{mora.bairroEnderecoMorador}}</td>
<td > <a  href="alterarmorador?numero={{mora.idMorador}}"><button class=" btn btn-warning" > Alterar</button></a><td>
<td> <a  href="excluirmorador?numero={{mora.idMorador}}"><button class=" btn btn-danger" > Excluir</button></a></td>
</tr>
</table>

</body>
</html>