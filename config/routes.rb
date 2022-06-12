Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :items, only: [:create, :index, :update]

  resources :users do
    resources :lists
    resources :follows, only: [:create, :destroy]
    get 'following', action: :following, controller: 'follows'
    get 'followers', action: :followers, controller: 'follows'
  end

  resources :lists do
    resources :favourite_lists, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
