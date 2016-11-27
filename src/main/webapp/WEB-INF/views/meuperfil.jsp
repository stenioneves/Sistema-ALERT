<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
<html>
<link rel="stylesheet" href="../resources/css/w3.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}



</style>
<script src="../resources/js/angular.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/jquery.min.js"></script>
<body ng-app="myApp" ng-controller="userCtrl">

<div class="w3-container">

<h3>Seus Dados</h3>

<table class="w3-table w3-bordered w3-striped">
  <tr>
    <th>Editar</th>
    <th>Exibir dados</th>
    <th> Nome Completo</th>
    <th>Email de acesso</th>
  </tr>
  <tr >
    <td>
      <button class="w3-btn w3-ripple" ng-click="editUser()">&#9998; Editar</button>
    </td>
    <td>
      <button  type="button" class="w3-btn w3-ripple" ng-click="exbirdados()" >&#9995; Exibir Dados</button>
    </td>
    <td>{{moradord.nomeMorador }}</td>
    <td>{{moradord.emailMorador }}</td>
  </tr>
</table>
<br>


<form ng-hide="hideform">
 
  <h3 ng-hide="edit">Editar dados:</h3>
    <label>Nome Completo:</label>
    <input class="w3-input w3-border" type="text" ng-model="nomeMorador" ng-disabled="!edit" placeholder="Nome Completo">
  <br>
    <label>E-mail:</label>
    <input class="w3-input w3-border" type="text" ng-model="emailMorador" ng-disabled="!edit" placeholder="E-mail">
  <br>
    <label>Password:</label>
    <input class="w3-input w3-border" type="password" ng-model="senhaMorador1" placeholder="Senha">
  <br>
    <label>Repeat:</label>
    <input class="w3-input w3-border" type="password" ng-model="Senhamorador2" placeholder="Repita a senha">
  <br>
  <button class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete">&#10004; Salvar Alteração</button>
</form>

</div>
<div ng-show="dados">
    <fieldset>
    <legend>DADOS PRINCIPAIS</legend>
    <h2>${morador.nomeMorador}</h2>
        <h5>DATA DE NASCIMENTO: <fmt:formatDate value="${morador.dataNascMorador }" pattern="dd/MM/yyyy"/></h5>
        <h5>SEXO: ${morador.sexoMorador} </h5>
        <h5>TELEFONE: ${morador.telefoneMorador }</h5>
        <h5>TIPO DE RESIDÊNCIA: ${morador.tipoResidencia }</h5>
        <c:set  var="valor" scope="session" value="${morador.qtdaMorador }"></c:set>
        <c:if test="${valor==1}">
         <h5>QUANTIDADE DE MORADORES NA RESIDÊNCIA: MAIS DE 3</h5>
        </c:if>
    
    <fieldset>
    <legend>ENDEREÇO</legend>
     <h5>${morador.ruaEnderecoMorador}</h5>
     <h5>COMPLEMENTO: ${morador.complementoEnderecoMorador}</h5>
     <fieldset>
     <legend>DADOS DO SEU GRUPO</legend>
      <h6>CÓDIGO DO GRUPO:${morador.grupo.idGrupo}</h6>
      <h5>ZONA(nome):${morador.grupo.nome}</h5>
      <h5>BAIRRO: ${morador.grupo.bairro}</h5>
      <h5>NÍVEL DE RISCO DO BAIRRO:${morador.grupo.nivelRiscoBairro }</h5>
     
     </fieldset>
    
    </fieldset>
    <a href="#"><button class="button button3" ng-click="excluirRegistro(moradord.idMorador)" title="Tenha certeza dessa ação!" ng-show="b">&#9997; Excluir Conta</button></a>
    <a href="../principal/sair"><button class="button button5" ng-show="a" title="Sair do sistema!">&#9995; Sair</button></a>
    <a href="../principal"><button class="button button5"  title="voltar para tela principal" ng-show="c">&#9999; Retornar</button></a>
    </fieldset>
  </div>


<script src= "../resources/js/modules/perfil.js" charset="UTF-8"></script>

</body>
</html>
    