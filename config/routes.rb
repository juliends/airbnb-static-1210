Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flats#index"
  get "flats", to: "flats#index"
# verb  path        controller#action

  get "flats/:id", to: "flats#show", as: :flat
  # parametric route
end
