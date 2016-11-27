angular.module("grupo",[]);

angular.module("grupo",[]).controller("grupoCtrl",function($scope,$http){
	
	
	$scope.listarG=function(){
		 $http.get('/grupo/listarGrupo').success(function(grupo){
			$scope.grupos=angular.fromJson(grupo)});
		 };	
		 $scope.listarG();
		 
	

	
})




