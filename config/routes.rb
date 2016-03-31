Rails.application.routes.draw do
  devise_for :users
  resources :photos
  root 'static#home'
end
