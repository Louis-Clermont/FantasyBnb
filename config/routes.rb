Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :new, :create, :show]
  resources :destinations, only: [:index, :new, :create, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
