angular.module("listarmorador").controller("listarmoradorCtrl", function($scope, $http){
 $scope.listar=function(){
	 $http.get('morador').success(function(morador){
		$scope.moradores=angular.fromJson(morador)});
	 };	
	 $scope.listar();
}
);




angular.module("listarmoradorgrupo").controller("listarmoradorgrupoCtrl", function($scope, $http){
	 $scope.listarMG=function(){
		 $http.get('listarMoradorGrupo').success(function(publicacao){
			$scope.listarmoradorg=angular.fromJson(publicacao)});
		 };	
		 $scope.listarMG();
	}
	);