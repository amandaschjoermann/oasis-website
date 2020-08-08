Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'tips', to: 'pages#tips'

  resources :channels, only: [:index]
  resources :categories, only: [:show]
  resources :spreadsheets, only: [:index]

end
