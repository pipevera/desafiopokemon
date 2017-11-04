Rails.application.routes.draw do


  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :pokemons do
    collection do
      get 'dashboard'
    end
  end

  resources :catches, only: [:index] do
    member do
      post 'level_up'
    end
  end

  post 'catches/:pokemon_id/add_pokemon', as: "add_pokemon", to: "catches#add_pokemon"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pokemons#dashboard"
end
