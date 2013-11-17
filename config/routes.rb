Reatech::Application.routes.draw do
  root 'checkins#index'

  resources :checkins
  resources :users
  resources :projects
  resources :locations
end
