Rails.application.routes.draw do
  namespace :api do 
    get '/pokemon' => 'pokemon#index'
    get '/pokemon/:id' => 'pokemon#show'

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }
  end 
end
