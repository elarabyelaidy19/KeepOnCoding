require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :data_entries, only: [:new, :create]
  root to: 'data_entries#new' 

  mount Sidekiq::Web => '/sidekiq'
end
