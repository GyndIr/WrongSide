Rails.application.routes.draw do
  root "chydak#Vtapke"
  get 'chydak/Vtapke'
  get "/chydak", to: "chydak#Vtapke"
  get "/chydak/:id", to: "chydak#show"

  resources :chydak do
    resources :comments
  end
end
