window.SapphireTest = angular.module 'app', ['ngRoute', 'sp.client']

SapphireTest.config ['$routeProvider', 'SpViewBuilderProvider', ($routeProvider, SpViewBuilderProvider) ->
	$routeProvider
		.when '/about', {
			templateUrl: "/assets/about.html"
		}
		.when '/:slug*', {
			template: SpViewBuilderProvider.template
			controller: 'SpViewController'			
		}
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