Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations:      'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    get  'select_sign_up',     to: 'users/registrations#select_sign_up'
    get  'profiles',           to: 'users/registrations#new_profile'
    post 'profiles',           to: 'users/registrations#create_profile'
    get  'shipping_addresses', to: 'users/registrations#new_address'
    post 'shipping_addresses', to: 'users/registrations#create_address'
  end

  root to: 'products#index'
  resources :products, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: :create 
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json'}
      get 'get_size', defaults: { format: 'json' }
      post 'search'
      get 'exhibition_complete'
    end
  end

  resources :purchase, only: :show do
    member do
      post 'pay',  to: 'purchase#pay'
      get  'done', to: 'purchase#done'
    end
  end

  resources :users, only: :show do
    member do
      get 'card',    to: 'card#show'
      get 'logout',  to: 'users#logout'
      get 'selling', to: 'users#selling'
      get 'purchasing'
    end
  end

  resources :card, only: [:new, :show] do 
    collection do
      post 'pay',    to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
end