Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/itineraries/:id', to: 'homes#index'

  namespace :api do 
    namespace :v1 do
      resources :itineraries, only: [:index, :show]
    end
  end

  resources :continents, only: [:index, :show]

  resources :countries, only: [:show]

  resources :cities, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
