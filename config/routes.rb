Rails.application.routes.draw do
  root to: 'pages#home'
    resources :artistes do
      resources :nouveautes, except: [:destroy, :edit, :update, :index]
  end

  resources :nouveautes, only: [:destroy, :edit, :update, :index]
end
