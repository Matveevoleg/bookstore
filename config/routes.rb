Rails.application.routes.draw do
  # get 'home/index'

  root to: "home#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

end
