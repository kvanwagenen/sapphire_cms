SapphireAdmin.factory "ContentBlockService", ["$http", ($http) ->
	service =
		get: (page=null, pageSize=null) ->
			$http.get("/sp/api/content_blocks")
				.then (response) ->
					response.data

		find: (id) ->
			$http.get("/sp/api/content_blocks/#{id}")
				.then (response) ->
					response.data

		update: ->

		create: ->

		destroy: ->

	service
]