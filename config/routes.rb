Rails.application.routes.draw do
  devise_for :users
  resources :videos
  resources :session_players
  resources :sessions
  resources :users
  post 'sessions/:id/upload', to: 'sessions#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
