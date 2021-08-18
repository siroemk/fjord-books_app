Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root 'books#index'
  resources :books
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
