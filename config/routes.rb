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
  resources :products, only: [:index, :new, :create] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json'}
      get 'get_size', defaults: { format: 'json' }
    end
  end
end