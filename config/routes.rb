# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update]
  get '/photos/:id' => 'album#photo', as: :albums_photo
  root to: 'album#show'
  mount Attachinary::Engine => '/attachinary'
end
