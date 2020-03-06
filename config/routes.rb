Rails.application.routes.draw do
root 'appointment#index'

  resources :patients do
    resources :appointments
  end

  resources :doctors do
      resources :appointments
  end

end
