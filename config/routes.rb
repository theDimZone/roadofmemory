Rails.application.routes.draw do

  get 'card/:id', to: 'card#show'
  get '/user/:id', to: 'user#show'
  get '/search', to: 'search#index'
  get '/search/', to: 'search#results'
  get '/troops/:id', to: 'troop#show'
  get '/troops', to: 'troop#index'
  get '/troops/add', to: 'troop#add'
  get '/score', to: 'score#index'
  get '/login', to: 'login#index'
  get '/login/get_token/', to: 'login#get_token'
  get '/', to: 'index#index'
  get '/veteran/add', to: 'veteran#add'
  get '/veteran/:id', to: 'veteran#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
