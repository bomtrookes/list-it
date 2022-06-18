Rails.application.routes.draw do
  devise_for :users

  # tags
  get '/tagged', to: 'lists#tagged', as: :tagged

  root to: 'pages#home'

  resources :items, only: [:create, :index, :update]

  resources :users do
    resources :lists do
      member do
        post :publish
      end
    end
    resources :follows, only: [:create, :destroy]
    get 'following', action: :following, controller: 'follows'
    get 'followers', action: :followers, controller: 'follows'
  end

  resources :lists do
    resources :favourite_lists, only: [:create, :destroy]
    resources :votes, only: [:create, :destroy]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
