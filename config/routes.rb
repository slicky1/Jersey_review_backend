Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :jerseys
  resources :brands
  # resources :teams
  # resources :countries
  resources :countries do
    resources :teams
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
