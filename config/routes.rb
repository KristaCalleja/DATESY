Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'user/dashboards#show'
    end
  end

  root to: 'pages#home'

  namespace :user do
    resources :friends, only: [:index] do
      resources :matches, only: [:new, :create]
    end
  end
end
