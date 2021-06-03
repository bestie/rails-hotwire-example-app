Rails.application.routes.draw do
  get "/", to: "hot_takes#index"

  resources :hot_takes, only: [:index, :create]
end
