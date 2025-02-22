Rails.application.routes.draw do
  get "characters/index"
  get "characters/show"
  root "characters#index"  # Change to the correct controller & action
  get "/about", to: "pages#about"
end
