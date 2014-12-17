SapphireCms::Engine.routes.draw do

  namespace :api do
    resources :content_blocks
    resources :routes  
  end

  get '*path', constraints: lambda {|req| !SapphireCms::Route.find_by_slug(req.path).nil?}, to: "templates#show"

end
