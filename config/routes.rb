Rails.application.routes.draw do

  resources :cates

  #get 'password_resets/new'
resources :password_resets

 
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, except: [:index]
  get 'home/index'
  root 'home#index'

  resources :products
  #root 'products#index'

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


get 'cates/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
