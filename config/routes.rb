# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'markets#index'
  get 'users/new', to: 'users#new', as: :new_user

  resources :markets, only: [:show] do
    member do
      post 'buy', to: 'markets#buy'
      post 'sell', to: 'markets#sell'
      get 'next_date', to: 'markets#next_date'
    end
  end
end
