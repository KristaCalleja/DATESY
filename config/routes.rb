Rails.application.routes.draw do
  namespace :user do
    get 'dates/new'
  end
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'user/dashboards#show'
    end
  end

  root to: 'pages#home'

  get '/kitchen_sink', to: 'pages#kitchen_sink' if Rails.env.development?
  namespace :user do
    resources :availability_picks, only: [:new, :create]
    resources :friends, only: [:index] do
      resources :matches, only: [:new, :create]
    end

    resources :dates, only: [:index]

    resources :matches, only: [:index, :show] do
      resources :dates, only: [:new, :create]
      post :status_change
    end

  get '/redirect', to: 'friends#redirect', as: 'redirect'
  get '/callback', to: 'friends#callback', as: 'callback'
  end
end
