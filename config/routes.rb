Rails.application.routes.draw do
  resources :session_players
  devise_for :users
  resources :videos
  resources :web_sessions
  resources :users
  post 'session_players/:id/upload', to: 'session_players#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
