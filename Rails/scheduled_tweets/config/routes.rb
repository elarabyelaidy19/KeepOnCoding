Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"   
  get "sign_up", to: "regesteration#new" 
  post "sign_up", to: "regesteration#create" 
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "sign_out", to: "sessions#destroy"
  root to: "main#index"
end
