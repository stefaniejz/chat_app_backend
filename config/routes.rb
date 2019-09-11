Rails.application.routes.draw do
  resources :messages
  resources :userchannels
  resources :channels
  resources :users
  post '/login', to: 'auth#create'
  post '/register', to: 'users#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
