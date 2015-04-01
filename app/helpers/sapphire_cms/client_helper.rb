module SapphireCms
  module ClientHelper
    def route_manifest
      slugs = ContentBlock.where(status: 'published').order('version DESC').group(:slug).pluck(:slug, :id, :controller)
      manifest = {}
      slugs.each{|s|manifest[s[0]] = s[1]}
      manifest.to_json
    end

    def precached_blocks
      blocks = ContentBlock.where(precache: true, status: 'published').order('version DESC').group(:slug)
      blocks.to_json
    end
  end
end