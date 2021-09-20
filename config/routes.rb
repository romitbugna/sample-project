Rails.application.routes.draw do
  get '/users',to: "users#index"
  # resources :users do
  #    member do
  #     get 'preview'
  # end
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

