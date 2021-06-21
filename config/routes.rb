Rails.application.routes.draw do
root to: 'pages#home'

resources :artiste, only: [:new, :create, :index, :destroy]
end
