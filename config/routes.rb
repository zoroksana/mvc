Rails.application.routes.draw do
  devise_for :installs
  devise_for :models
  devise_for :users, controllers: {omniauth_callback: "omniauth_callback"}
  resources :products


end
