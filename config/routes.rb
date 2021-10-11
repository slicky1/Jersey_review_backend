Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :jerseys
   resources :brands 
    resources :jerseys
   resources :teams
  # resources :countries
  resources :countries do
    resources :teams do 
      resources :jerseys
    end
  end

  resources :brands do
    resources :jerseys
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
