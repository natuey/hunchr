Rails.application.routes.draw do
 get '/', to: 'home#index', as: 'root'
 get 'home/index'
 get 'home/about'
end
