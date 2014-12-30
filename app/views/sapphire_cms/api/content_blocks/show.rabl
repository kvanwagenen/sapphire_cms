object @block
attributes :id, :title, :body, :slug
node(:updated_at){|block|block.updated_at.iso8601}