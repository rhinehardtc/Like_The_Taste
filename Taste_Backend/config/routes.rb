Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :recipe_tags
  resources :list_recipes
  resources :ratings
  resources :tags
  resources :ingredients
  resources :recipes
  resources :lists
  resources :users

  post "/search", to: "recipes#search"

  post "/login", to: "sessions#login"
  get "/logout", to: "sessions#logout"
  get "/check-login", to: "sessions#check_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
