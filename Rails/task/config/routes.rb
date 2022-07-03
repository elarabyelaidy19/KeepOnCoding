Rails.application.routes.draw do
  resources :tickets
  resources :projects
  devise_for :users 
  root to: "home#index" 

  resources :projects do
    scope module: :projects do
      resources :tickets # could potentially pass `shallow: true` here
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
