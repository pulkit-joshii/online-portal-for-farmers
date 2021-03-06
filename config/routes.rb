Rails.application.routes.draw do

  resources :nat_calamities

  resources :compensations do 
    member do
      get :approve
    end
  end

  resources :insurances do 
  member do
    get :approve
  end
end
  
  resources :subsidies do 
    member do
      get :approve
    end
  end

  resources :crops do 
    member do
      get :approve
    end
  end
  
  resources :lands do 
    member do
      get :approve
    end
  end
  
  resources :obasics
  
  resources :fbasics

  devise_for :officers
  
  devise_for :farmer

  get "/compensation_approval", to: "compensations#compensation_approval"
  
  get "/crop_approval", to: "crops#crop_approval"

  get "/grant_insurance", to: "insurances#grant_insurance"

  get "/land_approval", to: "lands#land_approval"

  get "/subsidy_approval", to: "subsidies#subsidy_approval"

  get "/home", to: "home#index"
  
  get "/farmer", to: "home#farmer"
  
  get "/officer", to: "home#officer"

  get "/servicesO", to: "home#servicesO"

  get "/servicesF", to: "home#servicesF"

  get "/Contact_us", to: "home#Contact_us"

  get "/farmers_list", to: "home#farmers_list"

  root 'home#index'

end
