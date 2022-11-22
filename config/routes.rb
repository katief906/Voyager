Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/itineraries', to: 'homes#index'
  get '/itineraries/:id', to: 'homes#index'
  get '/countries/:id', to: 'homes#index'
  get '/countries/:id/cities/:id', to: 'homes#index'
  get '/cities/:id', to: 'homes#index'
  get '/cities/:id/itineraries/new', to: 'homes#index'
  
  namespace :api do 
    namespace :v1 do
      resources :itineraries, only: [:index, :show] do
        resources :cities, only: [:show] do
          resources :stops, only: [:index]
        end
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :countries, only: [:show] do
        resources :cities, only: [:index]
      end

      resources :cities, only: [:create, :show] do
        resources :itineraries, only: [:create]
      end
    end
  end

  resources :continents, only: [:index, :show]

  resources :countries, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
