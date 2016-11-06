Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root 'users#display'

get '/users' => 'users#display'

post '/users' => 'users#create'

patch '/users/:id' => 'users#update'

delete '/users' => 'users#delete'
end
