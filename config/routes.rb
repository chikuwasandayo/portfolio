Rails.application.routes.draw do

resources :titles do
  resources :comments, only: [:create, :destroy]
  
end
resources :users
#post 'titles/:id', to: 'comments#create', as: 'create_comment'
 #get 'titles/new', to: 'titles#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
end
