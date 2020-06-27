Rails.application.routes.draw do
  root 'users#new'

  get '/users/new' => 'users#new'
  post '/' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
