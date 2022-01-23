Rails.application.routes.draw do
  resources :projects
  resources :accounts
  devise_for :users
  root 'home#index'
end
