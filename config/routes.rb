Rails.application.routes.draw do
  devise_for :officers
  devise_for :farmers
  get "/home", to: "home#index"
  # simple change
  # another change
  root 'home#index'
end
