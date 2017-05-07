Rails.application.routes.draw do
  root "films#index"

  resources :films
  resources :people
end
