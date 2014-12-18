SapphireAdmin.service "ContentBlockService", ["$http", ($http) ->
	service =
		get: (page=null, pageSize=null)->
			$http.get("/api/content_blocks")
				.then (response) ->
					response.data

		update: ->

		create: ->

		destroy: ->

	service
]