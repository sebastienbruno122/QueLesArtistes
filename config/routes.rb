Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  resources :artistes do
    resources :nouveautes, except: [:destroy, :edit, :update, :index]
  end

  resources :nouveautes, only: [:destroy, :edit, :update, :index]
end
