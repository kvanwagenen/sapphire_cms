window.SapphireAdmin = angular.module "SapphireAdmin", ['ngRoute']

SapphireAdmin.config ['$routeProvider', ($routeProvider) ->
	$routeProvider
		.when('/', {
			templateUrl: 'assets/content_blocks/list.html',
			controller: 'ContentBlocksController'
		})
		.when('/content-blocks', {
			templateUrl: 'assets/content_blocks/list.html',
			controller: 'ContentBlocksController'
		})
		.when('/content-blocks/:id/edit', {
			templateUrl: 'assets/content_blocks/edit.html',
			controller: 'ContentBlockEditController'
		})
		.when('/content-blocks/new', {
			templateUrl: 'assets/content_blocks/new.html',
			controller: 'ContentBlockNewController'
		})
]

SapphireAdmin.config ['$httpProvider', ($httpProvider) ->
	$httpProvider.defaults.headers.common['Accept'] = '*/*'
]