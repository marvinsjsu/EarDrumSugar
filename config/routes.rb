Rails.application.routes.draw do

  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :artists do
      resources :albums, only: [:index, :show, :create, :update, :destroy]
    end

    resources :albums, only: [:index, :show, :create, :update, :destroy] do
      resources :songs, only: [:create, :update, :destroy]
    end

  end
end
