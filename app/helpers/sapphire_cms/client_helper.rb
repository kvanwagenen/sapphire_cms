module SapphireCms
  module ClientHelper
    def slug_manifest
      slugs = ContentBlock.where(status: 'published').order('version DESC').group(:slug).pluck(:slug, :id)
      manifest = {}
      slugs.each{|s|manifest[s[0]] = s[1]}
      manifest.to_json
    end
  end
end