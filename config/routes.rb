Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"

  resources :movies, only: [:index, :show] do
  end

  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:create, :new]
  end

  resources :bookmarks, only: [:destroy]

  # get "/movies", to: "movies#index"
  # get "/movies/:id", to: "movies#show", as: "movie"
  # get "/lists", to: "lists#index"
  # get "/lists/new", to: "lists#new"
  # get "/lists/:id", to: "lists#show", as: "list"
  # post "/lists", to: "lists#create"
end
