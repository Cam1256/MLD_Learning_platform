Rails.application.routes.draw do
  devise_for :users
  resources :mld_mates
  get 'home/about'
  get 'home/try'
  get 'home/contact'
  get 'home/learn'
  get 'home/services'
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
