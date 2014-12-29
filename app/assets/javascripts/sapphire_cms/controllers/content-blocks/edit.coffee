SapphireAdmin.controller 'ContentBlockEditController', ['$scope', 'id', 'ContentBlockService', ($scope, id, ContentBlockService) ->
	ContentBlockService.find(id)
		.then (data) ->
			$scope.block = data 
]