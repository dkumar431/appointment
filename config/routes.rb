Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'search#new'
  resources :doctor_availabilities
  resources :search do 
    collection do 
      get :suggestions
    end
  end
  resources :booking
end
