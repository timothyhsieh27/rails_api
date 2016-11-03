Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root 'users#display'

post '/users', to: 'users#create'

get '/test' => 'users#display'

patch '/users/:id' => 'users#update'
end
