object @block
attributes :id, :title, :slug, :version, :status, :body, :layout_block_slug, :precache, :controller
node(:updated_at){|block|block.updated_at.iso8601}