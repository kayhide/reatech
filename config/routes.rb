Reatech::Application.routes.draw do
  root 'checkins#index'

  resources :checkins
  resources :locations
  resources :users
end
