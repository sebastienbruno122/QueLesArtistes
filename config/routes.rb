Rails.application.routes.draw do
root to: 'pages#home'
resources :artistes do
  resources :nouveautes
  end
end
