Rails.application.routes.draw do
  devise_for :users


  root 'groups#home'
 
  # get 'public-recipe', to: 'recipe#public'

  resources :groups
  resources :operations

  get 'home', to: 'groups#home'

  get '/group', to: 'group#index'


  # resources :groups, only: [:index, :new, :create :destroy] do
  #   resources :operations, only: [:index, :new, :create :destroy]
  # end
 

 

  

 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
