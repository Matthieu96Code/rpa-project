Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root "groups#index"

  resources :users do
    resources :groups
  end
  
  resources :groups do
    resources :pockets
  end
  
  resources :pockets
  # Defines the root path route ("/")
  # root "articles#index"
end
