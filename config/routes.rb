Rails.application.routes.draw do
  get 'home/index'
  # resources :hotels
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # resources :people
  # get '/users',to: "users#index"
  # resources :users do
  #    member do
  #     get 'preview'
  # end
  root 'home#index'
  resources :hotels
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'hotels#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

