Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :destinations, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :bookings, except: [:new, :create]
end
