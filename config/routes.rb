Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # Bin routes
  resources :bins

  # Api Routes
  namespace :api do
    resources :measurements, only: [:index, :create, :destroy, :update]
  end
end
