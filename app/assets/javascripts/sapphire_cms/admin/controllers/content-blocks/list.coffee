SapphireAdmin.controller "ContentBlocksController", ["$scope", "ContentBlockService", ($scope, ContentBlockService) ->
	ContentBlockService.get().then (data) ->
		$scope.contentBlocks = data

	$scope.destroy = (block) ->
		ContentBlockService.destroy(block)
			.then (data) ->
				toRemove = $scope.contentBlocks.indexOf(block)
				$scope.contentBlocks.splice(toRemove, 1)
]