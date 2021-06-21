Rails.application.routes.draw do
  root to: 'pages#home'

  resources :artistes, only: [:new, :create, :index, :show, :destroy] do
    resources :nouveautes, only: [:new, :create, :index, :show, :destroy]
  end
end
