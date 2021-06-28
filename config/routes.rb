Rails.application.routes.draw do
  root to: 'pages#home'
    resources :artistes do
      resources :nouveautes, except: :destroy
  end

  resources :nouveautes, only: [:destroy]
end
