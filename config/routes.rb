Rails.application.routes.draw do
  devise_for :users
  root to: "destinations#index"
  get "/about", to: "pages#about"
  get "/dashboard", to: "pages#dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :destinations, only: [:index, :new, :create, :show, :destroy, :edit] do
    resources :bookings, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :bookings, only: [:show, :index]
end
