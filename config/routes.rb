Rails.application.routes.draw do
  namespace :api do 
    get '/pokemon' => 'pokemon#index'
    get '/pokemon/:id' => 'pokemon#show'

    get '/users' => 'users#index'
    post "/users" => "users#create"
    
    post "/sessions" => "sessions#create"
  end 
end
