Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'tips', to: 'pages#tips'
  get 'rules', to: 'pages#rules'
  get 'test', to: 'pages#test'


  resources :channels, only: [:index]
  resources :categories, only: [:show]
  resources :spreadsheets, only: [:index]
  resources :bots, only: [:show]

end
