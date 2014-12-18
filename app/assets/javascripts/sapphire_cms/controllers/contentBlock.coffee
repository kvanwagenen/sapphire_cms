SapphireAdmin.controller "ContentBlocksController", ["$scope", "ContentBlockService", ($scope, ContentBlockService) ->
	$scope.contentBlocks = [
		{id: 1, title: "Block 1", body: "Block One Body"},
		{id: 2, title: "Block 2", body: "Body of Block Two"}
	]
]