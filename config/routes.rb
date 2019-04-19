Rails.application.routes.draw do
  resources :stocks
  devise_for :users
 get '/', to: 'home#index', as: 'root'
 get 'home/index'
 get 'home/about'

 post '/' => 'home#index'
end
