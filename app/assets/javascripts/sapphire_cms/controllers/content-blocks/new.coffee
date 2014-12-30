SapphireAdmin.controller 'ContentBlockNewController', ['$scope', '$location', 'ContentBlockService', ($scope, $location, ContentBlockService) ->
	$scope.block = 
		title: null,
		slug: null,
		body: null
	$scope.save = ->
		ContentBlockService.save($scope.block)
			.then((data) ->
				$location.path('/content-blocks')
			, (err) ->
				alert('Error creating content block')
			)
]