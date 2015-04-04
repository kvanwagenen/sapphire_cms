window.SapphireTest = angular.module 'app', ['sp.client']

SapphireTest.config ['$spRouteProvider', ($spRouteProvider) ->
	$spRouteProvider.addControllerDependencies 'ProductDetailController', {
		product: ['$timeout', ($timeout) ->
			$timeout(->
				name: 'Mickey Fun and Friends 16oz Favor Cup'
			, 2000)
		]
	}
]

ProductDetailController = ['$scope', 'product', ($scope, product) ->
	$scope.product = product
]

SapphireTest.controller 'ProductDetailController', ProductDetailController