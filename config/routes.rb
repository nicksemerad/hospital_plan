Rails.application.routes.draw do
root 'appointments#index'

  resources :patients do
    resources :appointments
  end

  resources :doctors do
      resources :appointments
  end

end
