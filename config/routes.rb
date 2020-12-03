Rails.application.routes.draw do
  resources :games
  resources :locations
  resources :attacks
  resources :enemies
  resources :players
  resources :battles, only: [:index, :show, :new]
  resources :games, only: [:new]
  get "/", to: "games#play", as: "play"
  # get "/:id/", to: "games#show", 
  # get "/battles/play", to: "battles#play", as: "play"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end