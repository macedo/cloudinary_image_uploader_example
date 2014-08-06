Rails.application.routes.draw do
  resources :users

  mount Attachinary::Engine => '/attachinary'
end
