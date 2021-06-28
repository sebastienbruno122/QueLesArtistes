Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :artistes do
      resources :nouveautes, except: [:destroy, :edit, :update, :index]
  end

  resources :nouveautes, only: [:destroy, :edit, :update, :index]
end
