Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :videos
  resources :session_players
  resources :sessions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
