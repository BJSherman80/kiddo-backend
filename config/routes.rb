Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: :update
      resources :tasks
      resources :missions, only: [:index, :create, :destroy]
    end
  end
end
