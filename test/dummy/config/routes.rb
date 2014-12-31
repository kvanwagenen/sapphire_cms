Rails.application.routes.draw do
  root 'home#index'
  mount SapphireCms::Engine => "/sp"
end
