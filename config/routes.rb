Rails.application.routes.draw do
  namespace :api do 
    get '/pokemon' => 'pokemon#index'
    get '/pokemon/:id' => 'pokemon#show'
  end 
end
