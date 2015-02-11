Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'products#index'

  resources :charges
  resources :products, only: [:index, :show]
  resources :purchases, only: [:show]

end
