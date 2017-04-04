Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations, :omniauth_callbacks => "omniauth_callbacks" }

  root 'welcome#welcome'

  resources :users do
    resources :appointments
  end

  get 'users/:user_id/money', to: 'users#edit_wallet', as: :edit_user_money
  patch 'users/:user_id/money', to: 'users#update_wallet', as: :update_user_money


  resources :rabbis


end
