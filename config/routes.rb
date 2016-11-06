Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root 'users#display'

get '/users' => 'users#display'
get '/users/user' => 'users#find'

post '/users' => 'users#create'

put '/users' => 'users#update'

delete '/users' => 'users#delete'
end
