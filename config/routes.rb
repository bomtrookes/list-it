Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :follows
  resources :favourite_lists
  resources :items

  resources :users do
    resources :lists
  end

  get 'profile', action: :profile, controller: 'users'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
