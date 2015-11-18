Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/create'

  resources :foodtrucks, only: [:index, :show, :new]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'foodtrucks#index'
end
