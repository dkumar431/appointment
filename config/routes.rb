Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :doctors
  get 'search/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :doctor_availabilities
  resources :search do 
    collection do 
      get :suggestions
    end
  end
  authenticated :doctor do
    root 'doctor_availabilities#index', as: :authenticated_root
  end
  root to: 'search#new'
  resources :booking do 
    collection do 
      post :create_booking  
    end
  end
end
