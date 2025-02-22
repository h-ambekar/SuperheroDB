Rails.application.routes.draw do
  get "pages/about"
  get "about/index"
  root "characters#index" # Home page
  resources :characters, only: [ :index, :show ]
  get "/superheroes", to: "characters#index"
  get "/users", to: "users#index"
  get "/about", to: "pages#about"
end
