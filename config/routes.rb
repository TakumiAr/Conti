Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  get "users/mypage", to: "users#mypage"
  resources :users

  get "requests/made", to: "requests#made"
  get "requests/gets", to: "requests#gets"
  resources :requests
  resources :services
  get '/about', :to => "home#about"
end
