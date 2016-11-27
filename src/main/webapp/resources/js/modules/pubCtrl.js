angular.module("listarpublicacao",[]);

angular.module("listarpublicacao").controller("listarpublicacaoCtrl", function($scope, $http){
	
	$scope.publicacao=[];
	$scope.listarP=function(){
		 $http.get('pub').success(function(publicacaos){
			$scope.publicacoes=angular.fromJson(publicacaos)});
		 };	
		 $scope.listarP();
		 
		 
		 $scope.editer= function(idPublicacao){
			 $scope.publicacao.idPublicacao= idPublicacao.idPublicacao;
			 //$scope.publicacao.morador=$scope.publicacoes[idPublicacao-1].morador;
			 $scope.publicacao.dataPublicacao=idPublicacao.dataPublicacao;
			 $scope.publicacao.tituloPublicacao=idPublicacao.tituloPublicacao;
			 $scope.publicacao.textoPublicacao= idPublicacao.textoPublicacao;
			 
		 };
		 
		
		 $scope.editarp=function(){
			 
			 
			 
			 var publica= angular.copy($scope.publicacao);
			  $http.post('editarp'+publica).success(function(){
				//alert("Publicação alterada com sucesso!");  
				  
			  });
			 
			 
		 } 
		
	}
	);
