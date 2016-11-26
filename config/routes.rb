Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get '/events', to: 'home#events', as: 'events'
  get '/photos', to: 'home#photos', as: 'photos'
end
