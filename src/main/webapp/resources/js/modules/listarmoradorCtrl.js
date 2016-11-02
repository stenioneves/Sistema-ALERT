angular.module("listarmorador").controller("listarmoradorCtrl", function($scope, $http){
 $scope.listar=function(){
	 $http.get('morador').success(function(morador){
		$scope.moradores=angular.fromJson(morador)});
	 };	
	 $scope.listar();
}
);

angular.module("listarpublicacao").controller("listarpublicacaoCtrl", function($scope, $http){
	 $scope.listarP=function(){
		 $http.get('publicacao').success(function(publicacao){
			$scope.publicacoes=angular.fromJson(publicacao)});
		 };	
		 $scope.listarP();
	}
	);