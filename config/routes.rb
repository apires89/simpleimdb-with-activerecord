Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb(get) "path", to: "controller#action"
  get "movies", to: "movies#index"
  get "movies/new", to: "movies#new"
  get "movies/:id", to: "movies#show"
  post "movies", to: "movies#create"

end
