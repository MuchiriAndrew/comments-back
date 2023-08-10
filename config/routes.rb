Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Routes for Comments
  resources :comments, only: [:index, :show, :create, :update, :destroy]

  # Routes for Users
  resources :users, only: [:index, :show, :create, :destroy]
  post '/login', to: 'sessions#create'

  # Routes for Replies
  resources :replies, only: [:index, :show, :create, :update, :destroy]
end

