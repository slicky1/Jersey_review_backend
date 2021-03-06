Rails.application.routes.draw do
  resources :reviews
  resources :users
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # resources :jerseys
  #  resources :brands 
  #   resources :jerseys
  
  # resources :countries
  resources :countries do
    resources :teams 
  end

  resources :teams do
    resources :jerseys
  end

  resources :brands do
    resources :jerseys
  end

  resources :jerseys do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
