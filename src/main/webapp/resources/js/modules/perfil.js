angular.module('myApp', []).controller('userCtrl', function($scope, $http, $location,$window) {
	$scope.listardados=function(){
		 $http.get('../meusdados').success(function(morador){
			$scope.moradord=angular.fromJson(morador)});
		 };	
		 $scope.listardados();
		 
$scope.b= true;
$scope.a= false;
$scope.c=true
		 
$scope.dados= false;
$scope.exbirdados=function(){
$scope.dados=true;	
	
}

$scope.excluirRegistro = function(codigo){
	 
	 if(confirm("Deseja realmente excluir esse registro?")){

		 /*CHAMA O MÉTODO DO SPRING PARA EXCLUIR UM REGISTRO*/
		 var response = $http.delete("../excluirMorador/" + codigo);
        response.success(function(data, status, headers, config) {
           alert(" Cadastro Excluido;" +
           		"Obrigado por ter usado o Alert! ");
            $scope.b= false; $scope.a= true;
            $scope.c=false;
	

		 });

		 response.error(function(data, status, headers, config) {
			 /*SE OCORRER ERRO NÃO TRATADO IREMOS MOSTRA EM MENSAGEM*/
			 window.alert(data);
			 $scope.b=false;
			 
		 });

	 }


}







$scope.nomeMorador = '';
$scope.emailMorador = '';
$scope.senhaMorador = '';
$scope.senhaMorador2 = '';

$scope.hideform = true;
$scope.edit = true;
$scope.error = false;
$scope.incomplete = false; 
$scope.editUser = function(id) {
$scope.hideform = false;
if (id == 'new') {
  $scope.edit = true;
  $scope.incomplete = true;
  $scope.nomeMorador = '';
  $scope.emailMorador = '';
  } else {
  $scope.edit = false;
  $scope.nomeMorador = $scope.moradord.nomeMorador;
  $scope.emailMorador= $scope.moradord.emailMorador; 
  }
};
$scope.$watch('senhaMorador1',function() {$scope.test();});
$scope.$watch('senhaMorador2',function() {$scope.test();});
$scope.$watch('nomeMorador',function() {$scope.test();});
$scope.$watch('emailNome',function() {$scope.test();});
$scope.test = function() {
if ($scope.senhaMorador1 !== $scope.senhaMorador2) {
  $scope.error = true;
  } else {
  $scope.error = false;
  }
  $scope.incomplete = false;
  if ($scope.edit && (!$scope.nomeMorador.length ||
  !$scope.emailMorador.length ||
  !$scope.senhaMorador1.length || !$scope.senhaMorador2.length)) {
    $scope.incomplete = true;
  }
};
})