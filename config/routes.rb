Rails.application.routes.draw do
  # resources :games
  resources :locations
  resources :attacks
  resources :enemies
  resources :players#, only: [:index, :edit, :create, :show, :new, :delete]
  resources :battles, only: [:index, :show, :new]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end