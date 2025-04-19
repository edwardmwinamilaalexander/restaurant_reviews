
  Rails.application.routes.draw do
    root "home#index"
    resources :restaurants, only: [ :index, :new, :create, :show, :edit, :update, :destroy ] do
      resources :reviews, only: [ :new, :create ]
    end
  end
