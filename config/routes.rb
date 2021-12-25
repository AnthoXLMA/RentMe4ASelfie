Rails.application.routes.draw do
  devise_for :users
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :company, only: [:index, :show, :new, :create]

  resources :products, only: [:index, :show, :new, :create]
end
