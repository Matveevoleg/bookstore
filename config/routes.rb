Rails.application.routes.draw do
	
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "home#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }


end
