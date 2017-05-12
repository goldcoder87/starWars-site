Rails.application.routes.draw do
  root "homes#index"
    devise_for :users
    resources :users
    resources :films
    resources :people
    resources :posts
  end
