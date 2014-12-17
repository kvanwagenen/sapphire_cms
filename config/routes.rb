SapphireCms::Engine.routes.draw do

  namespace :api do
    resources :content_blocks
  end

  get '*path', constraints: lambda {|req| !SapphireCms::ContentBlock.find_by_slug(req.path).nil?}, to: "templates#show"

end
