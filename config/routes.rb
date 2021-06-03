Rails.application.routes.draw do
  get "/", to: "hot_takes#index"

  resources :hot_takes, only: [:index, :create]
  resources :turbo_for_free_hot_takes, only: [:index, :create]
  resources :turbo_optimized_hot_takes, only: [:index, :create]
end
