require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :jobs
  devise_for :users
  root to: 'jobs#index'
  get '/info' => 'pages#info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
