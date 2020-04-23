Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get  'profiles',           to: 'users/registrations#new_profile'
    post 'profiles',           to: 'users/registrations#create_profile'
    get  'shipping_addresses', to: 'users/registrations#new_address'
    post 'shipping_addresses', to: 'users/registrations#create_address'
  end

  resources :users, only: :show do
    member do
      get 'card',   to: 'card#show'
      get 'logout', to: 'users#logout'
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show',   to: 'card#show'
      post 'pay',    to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
end