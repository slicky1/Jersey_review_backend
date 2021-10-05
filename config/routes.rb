Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :jerseys
  resources :brands
  resources :teams
  resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
