Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "pages#home"

  get 'tips', to: 'pages#tips'
  get 'rules', to: 'pages#rules'
  get 'login', to: 'pages#login'
  get 'not-member', to: 'pages#no_member_zone', as: :no_member_zone

  resources :channels, only: [:index]
  resources :categories, only: [:show]
  resources :spreadsheets, only: [:index]
  resources :bots, only: [:show]

end
