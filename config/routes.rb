Reatech::Application.routes.draw do
  root 'checkins#index'

  devise_for :users

  resources :checkins, only: [:index, :new, :create, :destroy]
  resources :users
  resources :projects
  resources :locations, only: [:index]
end
