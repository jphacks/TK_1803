Rails.application.routes.draw do
  devise_for :users
  resources :videos
  resources :web_sessions
  resources :users
  post 'web_sessions/:id/upload', to: 'web_sessions#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
