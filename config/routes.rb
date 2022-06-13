Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # tags
  get '/tagged', to: "lists#tagged", as: :tagged

  resources :favourite_lists

  resources :items, only: [:create]

  resources :users do
    resources :lists
    resources :follows, only: [:create, :destroy]
    get 'following', action: :following, controller: 'follows'
    get 'followers', action: :followers, controller: 'follows'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
