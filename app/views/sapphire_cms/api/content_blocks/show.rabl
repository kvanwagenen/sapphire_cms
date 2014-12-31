object @block
attributes :id, :title, :body, :slug, :layout_block_id
node(:updated_at){|block|block.updated_at.iso8601}