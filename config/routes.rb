Rails.application.routes.draw do
  resources :tteams
  resources :players
  root 'players#index'
end
