Rails.application.routes.draw do
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  devise_for :companies
  devise_for :users
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :companies, only: [:index, :show, :new, :create]

  resources :companies, only: [:index, :new, :show, :create] do
    resources :products, only: [:index, :new, :create, :show, :update, :destroy]
  end

  resources :products, only: [:index, :show, :new, :create, :categories]

  resources :bookings, only: [:index, :new, :show, :create, :destroy] do
    resources :products, only: [:index, :new, :create, :destroy]
  end

  resources :products, only: [:index, :new, :create, :destroy] do
    resources :bookings, only: [:index, :new, :create, :destroy]
  end

  resources :experiences, only: [:index, :show]
end
