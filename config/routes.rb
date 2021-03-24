Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :purchases, only: [ :index, :show, :create ] do
        resources :purchasers, only: [:index, :create] do
          resources :products, only: [:index, :create]
        end
      end
    end
  end
end
