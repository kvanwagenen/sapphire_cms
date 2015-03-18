window.SapphireTest = angular.module 'app', ['ngRoute', 'sp.client']

SapphireTest.config ['$routeProvider', '$locationProvider', 'SpViewBuilderProvider', ($routeProvider, $locationProvider, SpViewBuilderProvider) ->
	$routeProvider
		.when '/about', {
			templateUrl: "/assets/about.html"
		}
		.when '/:slug*', {
			template: SpViewBuilderProvider.template		
		}
	$locationProvider.html5Mode true
]

SapphireTest.run ['SpViewBuilder', (SpViewBuilder) ->
	console.log 'SpViewBuilder initialized.'
]

SapphireTest.factory 'BlockService', ['$http', ($http) ->
	service = 
		blocks: {}
		find_by_slug: (slug) ->
			if blocks[slug]
				blocks[slug]
			else
				$http.get("/api/content-blocks/slug/#{slug}")
					.then (response) ->
						service.blocks[slug] = response.data
						response.data

	service
]