Rails.application.routes.draw do
  resources :locations
  resources :attacks
  resources :enemies
  resources :players
  resources :battles, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  patch 'battles/:id/damage', to: "battles#damage", as: "damage"
  get 'battles/:id/state', to: "battles#state", as: "state"
  get 'battles/:id/stats', to: "battles#stats", as: "stats"
  get 'battles/:id/allstats', to: "battles#allstats", as: "allstats"
  patch 'battles/:id/prize', to: "battles#prize", as: "prize"
  # patch 'players/:id/attackassign', to: "players#attackassign", as: "attackassign"
end