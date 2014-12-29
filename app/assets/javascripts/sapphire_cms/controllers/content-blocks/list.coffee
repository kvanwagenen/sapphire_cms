SapphireAdmin.controller "ContentBlocksController", ["$scope", "ContentBlockService", ($scope, ContentBlockService) ->
	ContentBlockService.get().then (data) ->
		$scope.contentBlocks = data
]