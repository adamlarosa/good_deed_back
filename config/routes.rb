Rails.application.routes.draw do
  resources :incidents
  resources :comments
  resources :user_cases
  resources :health_care_facilities
  resources :cases

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
