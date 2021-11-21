Rails.application.routes.draw do

  resources :compensations
  resources :insurances
  resources :subsidies

  resources :crops
  
  resources :lands
  
  resources :obasics
  
  resources :fbasics

  devise_for :officers
  
  devise_for :farmer

  get "/home", to: "home#index"
  
  get "/farmer", to: "home#farmer"
  
  get "/officer", to: "home#officer"

  root 'home#index'

end
