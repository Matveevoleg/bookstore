Rails.application.routes.draw do
	
  get 'books/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "home#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  resources :categories
  resources :books


end
