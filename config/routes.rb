Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update]
  root to: 'album#show'
  mount Attachinary::Engine => '/attachinary'
end
