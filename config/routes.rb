Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'user/dashboards#show'
    end
  end

  root to: 'pages#home'

  get '/kitchen_sink', to: 'pages#kitchen_sink' if Rails.env.development?
  namespace :user do
    resources :friends, only: [:index] do
      resources :matches, only: [:new, :create]
    end

    resources :matches, only: [:index, :edit, :update]
  end
end
