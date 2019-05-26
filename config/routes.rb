Rails.application.routes.draw do
  root 'spaces#index'

  resources :spaces
end
