Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do 
  	get 'signup', to: 'devise/registrations#new', as: :signup
  	get 'login', to: 'devise/sessions#new', as: :login
  	get 'logout', to: 'devise/sessions#destroy', as: :logout

  end 


  resources :statuses
  get 'feed', to: 'statuses#index', as: :feed
  root to: 'statuses#index'


end
