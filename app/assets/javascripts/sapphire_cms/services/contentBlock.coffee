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

		save: (block) ->
			if block.id
				service.update(block)
			else
				service.create(block)

		update: (block) ->
			$http.put("/sp/api/content_blocks/#{block.id}", block)
				.then (response) ->
					response.data
		create: (block) ->
			$http.post("/sp/api/content_blocks", block)
				.then (response) ->
					response.data

		destroy: (block) ->
			$http.delete("/sp/api/content_blocks/#{block.id}")
				.then (response) ->
					response.data

	service
]