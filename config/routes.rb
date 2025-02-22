Rails.application.routes.draw do
  root "characters#index"  # Change to the correct controller & action
  get "/about", to: "pages#about"
end
