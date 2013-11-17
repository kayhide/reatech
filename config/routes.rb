Reatech::Application.routes.draw do
  devise_for :users
  root 'checkins#index'

  resources :checkins
  resources :users
  resources :projects
  resources :locations
end
