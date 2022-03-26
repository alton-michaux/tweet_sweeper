# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :profiles, only: [:index]  
    resources :tweets, only: [:index, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
