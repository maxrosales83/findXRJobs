require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :jobs do
    get :search #creates new path for search feature
  end
  
  resources :articles
  devise_for :users
  root to: 'jobs#index'
  get '/info' => 'pages#info'
  get '/blog' => 'articles#index'
  get '/privacy' => 'pages#privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/emailsignup'  => 'emailapi#index'
  post '/emailapi/subscribe'=> 'emailapi#subscribe'
    
  
    
end
