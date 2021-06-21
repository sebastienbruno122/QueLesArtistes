Rails.application.routes.draw do
root to: 'pages#home'
resources :artiste, only: [:new, :create, :index, :show, :destroy] do
  resources :nouveaute, only: [:new, :create, :index, :show, :destroy]
  end
end
