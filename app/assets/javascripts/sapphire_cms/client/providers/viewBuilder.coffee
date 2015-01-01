###
# 
###
SpViewBuilder = (ContentBlockService, builder) ->
	builder.build = ($routeParams) ->
		blocks = []
		compile = () ->
			blocks.reverse()
			template = blocks[0].body
			blocks = blocks[1..-1]
			angular.forEach blocks, (block) ->
				template = template.replace("<sp-yield></sp-yield>", block.body)
			template
		ContentBlockService.find_by_slug($routeParams.slug)
			.then (block) ->
				blocks.push(block)
				if block.layout_block_id?
					ContentBlockService.find(block.layout_block_id)
					.then (layout) ->
						block = layout
						blocks.push(layout)
						if block.layout_block_id?
							ContentBlockService.find(block.layout_block_id)
							.then (layout) ->
								block = layout
								blocks.push(layout)
								compile()
						else
							compile()
		
	service = 
		builder: builder
	service

angular.module('sp.client').provider 'SpViewBuilder', ->
	builder =
		build: ($routeParams) ->
			""
	@template = ($routeParams) ->
		builder.build($routeParams)
	@$get = ['ContentBlockService', (ContentBlockService) ->
		# Returns the view builder service
		return new SpViewBuilder(ContentBlockService, builder)
	]
	@