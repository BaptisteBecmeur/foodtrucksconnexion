Rails.application.routes.draw do
  get 'reservations/index'

  get 'reservations/show'

  get 'reservations/new'

  get 'reservations/create'

  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/create'

  resources :foodtrucks, only: [:index, :show, :new]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'foodtrucks#index'
end
