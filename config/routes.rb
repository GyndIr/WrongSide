Rails.application.routes.draw do
  root "chydak#Vtapke"
  get 'chydak/Vtapke'
  get "/chydak", to: "chydak#Vtapke"

  resources :chydak do
    resources :comments
  end
end
