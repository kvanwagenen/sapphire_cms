Rails.application.routes.draw do
  root 'sapphire_cms/client#index'
  mount SapphireCms::Engine => "/sp"
end
