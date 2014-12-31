window.SapphireTest = angular.module 'app', ['ngRoute']

SapphireTest.config ['$routeProvider', ($routeProvider) ->
	$routeProvider
		.when '/:slug', {
			template: ($routeParams) ->
				"<ng-include src=\"'/sp/#{$routeParams.slug}'\"></ng-include>"
		}
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