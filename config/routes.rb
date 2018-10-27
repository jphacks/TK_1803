Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :videos
  resources :session_players, except: :show
  devise_for :users
  resources :videos
  resources :web_sessions
  resources :users
  post 'session_players/upload', to: 'session_players#upload'
  get 'web_sessions/:id/join', to: 'web_sessions#join', as: 'join_web_session'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
