Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :favourite_lists

  resources :items, only: [:create, :index, :update]

  resources :users do
    resources :lists
    resources :follows, only: [:create, :destroy]
    get 'following', action: :following, controller: 'follows'
    get 'followers', action: :followers, controller: 'follows'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
