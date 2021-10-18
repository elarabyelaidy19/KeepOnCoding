Rails.application.routes.draw do
  
=begin 
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  get 'posts/update'
  get 'posts/edit'
  get 'posts/destroy' 
=end 
  
  # root "posts#index"
  resources :posts do 
    resources :comments 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
