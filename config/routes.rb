# frozen_string_literal: true

Rails.application.routes.draw do
  # root 'pages/index','pages#index'
  resources :users
  resources :tweets
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
