Rails.application.routes.draw do
  resources :messages
  resources :userchannels
  resources :channels
  resources :users
  post '/login', to: 'auth#create'
  post '/register', to: 'users#create'
  get '/profile', to: 'users#profile'
  post '/direct_channel', to: 'channels#get_or_create_direct_channel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
