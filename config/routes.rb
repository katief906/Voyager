Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/itineraries', to: 'homes#index'
  get '/itineraries/new', to: 'homes#authenticated'
  get '/itineraries/:id', to: 'homes#index'
  get '/itineraries/:itinerary_id/cities/:city_id/stops/new', to: 'homes#index'
  get '/countries/:id', to: 'homes#index'
  get '/countries/:country_id/cities/:city_id', to: 'homes#index'
  get '/cities/:id', to: 'homes#index'
  get '/cities/:id/itineraries/new', to: 'homes#authenticated'
  get '/about', to: 'homes#index'

  namespace :api do 
    namespace :v1 do
      resources :itineraries, only: [:index, :show] do
        resources :cities, only: [:show] do
          resources :stops, only: [:index, :new]
        end
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :countries, only: [:index, :show] do
        resources :cities, only: [:index]
      end


      resources :cities, only: [:index, :show, :new, :create] do
        resources :itineraries, only: [:create]
      end

      resources :itineraries, only: [:new]
    end
  end

  resources :continents, only: [:index, :show]

  resources :countries, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
