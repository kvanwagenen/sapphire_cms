# window.SapphireTest = angular.module 'app', ['ngRoute', 'sp.client']
window.SapphireTest = angular.module 'app', ['sp.client']

# SapphireTest.config ['$routeProvider', 'SpViewBuilderProvider', '$urlRouterProvider', '$stateProvider', 'SlugManifest', ($routeProvider, SpViewBuilderProvider, $urlRouterProvider, $stateProvider, SlugManifest) ->
# 	# $routeProvider
# 	# 	.when '/about', {
# 	# 		templateUrl: "/assets/about.html"
# 	# 	}
# 	# 	.when '/:slug*', {
# 	# 		template: SpViewBuilderProvider.template		
# 	# 	}
# 	angular.forEach Object.keys(SlugManifest), (slug) ->
# 		$stateProvider.state slug, 
# 			url: slug,
# 			template: SpViewBuilderProvider.template

# ]

# SapphireTest.run ['SpViewBuilder', (SpViewBuilder) ->
# 	console.log 'SpViewBuilder initialized.'
# ]

# SapphireTest.factory 'BlockService', ['$http', ($http) ->
# 	service = 
# 		blocks: {}
# 		find_by_slug: (slug) ->
# 			if blocks[slug]
# 				blocks[slug]
# 			else
# 				$http.get("/api/content-blocks/slug/#{slug}")
# 					.then (response) ->
# 						service.blocks[slug] = response.data
# 						response.data

# 	service
# ]