Rails.application.routes.draw do
  root 'projects#index'

  resources :projects, only: [:index]
  resources :users, only: [:new, :create, :show]
end
