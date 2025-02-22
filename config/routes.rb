Rails.application.routes.draw do
  root "characters#index" # Home page
  get "/superheroes", to: "characters#index" 
  get "/users", to: "users#index"
  get "/about", to: "pages#about"
end