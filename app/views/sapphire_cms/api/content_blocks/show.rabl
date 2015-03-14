object @block
attributes :id, :title, :slug, :version, :status, :body
node(:updatedAt){|block|block.updated_at.iso8601}
node(:layoutBlockSlug){|block|block.layout_block_slug}