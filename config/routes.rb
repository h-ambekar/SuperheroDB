Rails.application.routes.draw do
  root "characters#index"
  resources :characters, only: [:index, :show]
  get "/about", to: "pages#about"
end
