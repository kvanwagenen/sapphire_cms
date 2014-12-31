SapphireCms::Engine.routes.draw do

  root to: 'admin/admin#index'

  namespace :api do
    resources :content_blocks
  end

  get '*path', constraints: lambda {|req| root_length = SapphireCms::Engine.routes.url_helpers.root_path.length; !SapphireCms::ContentBlock.find_by_slug(req.path[root_length..-1]).nil?}, to: "templates#show"

end
