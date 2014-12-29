window.SapphireAdmin = angular.module "SapphireAdmin", ['ngRoute']

SapphireAdmin.config ['$routeProvider', ($routeProvider) ->
	$routeProvider
		.when '/', {
			templateUrl: 'assets/content-blocks/list.html',
			controller: 'ContentBlocksController'
		}
		.when '/content-block/:id/edit', {
			templateUrl: 'assets/content-blocks/edit.html',
			controller: 'ContentBlockEditController'
		}
]

SapphireAdmin.config ['$httpProvider', ($httpProvider) ->
	$httpProvider.defaults.headers.common['Accept'] = '*/*'
]