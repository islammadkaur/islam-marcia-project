Rails.application.routes.draw do
  resources :locations, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :attacks
  resources :enemies
  resources :players
  resources :battles, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  patch 'battles/:id/atkbtn1', to: "battles#atkbtn1", as: "atkbtn1"
  patch 'battles/:id/atkbtn2', to: "battles#atkbtn2", as: "atkbtn2"
  patch 'battles/:id/atkbtn3', to: "battles#atkbtn3", as: "atkbtn3"
  patch 'battles/:id/atkbtn4', to: "battles#atkbtn4", as: "atkbtn4"

  get 'battles/:id/state', to: "battles#state", as: "state"
  get 'battles/:id/stats', to: "battles#stats", as: "stats"
  get 'battles/:id/allstats', to: "battles#allstats", as: "allstats"
  patch 'battles/:id/prize', to: "battles#prize", as: "prize"
  patch 'battles/:id/lost', to: "battles#lost", as: "lost"
  patch 'players/:id/create_player', to: "players#create_player", as: "create_player"
  patch 'enemies/:id/create_enemy', to: "enemies#create_enemy", as: "create_enemy"
  # patch 'players/:id/attackassign', to: "players#attackassign", as: "attackassign"

end