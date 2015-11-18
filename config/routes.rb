Rails.application.routes.draw do
  resources :foodtrucks, only: [:index, :show, :new, :create]
  get 'reservations/index'

  get 'reservations/show'

  get 'reservations/new'

  get 'reservations/create'

  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/create'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'foodtrucks#index'
end
