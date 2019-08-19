Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  # devise_scope :user do
  #   get "user/:id", :to => "users/registrations#detail"
  #   get "signup", :to => "users/registrations#new"
  #   get "login", :to => "users/sessions#new"
  #   get "logout", :to => "users/sessions#destroy"
  # end
  resources :users, only: [:show]
  resources :requests, only: [:index, :new, :show]
  resources :services, only: [:show]
  get '/about', :to => "home#about"
end
