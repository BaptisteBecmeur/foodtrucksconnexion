Rails.application.routes.draw do

  resources :foodtrucks, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:index, :show, :new, :create]
  end
  resources :messages, only: [:index, :show, :new, :create]


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'foodtrucks#index'
end
