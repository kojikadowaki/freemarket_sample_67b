Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get  'profiles',           to: 'users/registrations#new_profile'
    post 'profiles',           to: 'users/registrations#create_profile'
    get  'shipping_addresses', to: 'users/registrations#new_address'
    post 'shipping_addresses', to: 'users/registrations#create_address'
  end
  root to: 'products#index'
  resources :products, only: [:index, :new, :create]

end
