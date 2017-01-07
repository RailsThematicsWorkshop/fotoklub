Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get '/events', to: 'home#events', as: 'events'
  resources :photos
end
