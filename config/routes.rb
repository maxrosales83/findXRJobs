require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :jobs do
    get :search #creates new path for search feature
  end
  devise_for :users
  root to: 'jobs#index'
  get '/info' => 'pages#info'
 #get '/blog' => 'pages#blog'
  get '/privacy' => 'pages#privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/emailsignup'  => 'emailapi#index'
  post '/emailapi/subscribe'=> 'emailapi#subscribe'
  get '/blog', to: redirect("https:/www.xrloaded.com/blog/", status: 301)
  
    
end
