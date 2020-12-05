Rails.application.routes.draw do
  resources :locations
  resources :attacks
  resources :enemies
  resources :players
  resources :battles, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  patch 'battles/:id/atkbtn1', to: "battles#atkbtn1", as: "atkbtn1"
  patch 'battles/:id/atkbtn2', to: "battles#atkbtn2", as: "atkbtn2"
  patch 'battles/:id/atkbtn3', to: "battles#atkbtn3", as: "atkbtn3"
  get 'battles/:id/state', to: "battles#state", as: "state"
  get 'battles/:id/stats', to: "battles#stats", as: "stats"
  get 'battles/:id/allstats', to: "battles#allstats", as: "allstats"
  patch 'battles/:id/prize', to: "battles#prize", as: "prize"
  # patch 'players/:id/attackassign', to: "players#attackassign", as: "attackassign"
end