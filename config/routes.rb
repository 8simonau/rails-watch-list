Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new", as: "new_list"
  # get "lists/:id", to: "lists#show", as: "list"
  # post "lists", to: "lists#create"

  # get "lists/:id/bookmarks/new", to: "bookmarks#new", as: "new_bookmark"
  # post "lists/:id/bookmarks", to: "bookmarks#create"

  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
end
