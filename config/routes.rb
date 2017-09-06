Rails.application.routes.draw do
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
  resources :booking
end
