Rails.application.routes.draw do

  get '/', to: 'index#index'
  get '/veteran/add', to: 'veteran#add'
  get '/veteran/:id', to: 'veteran#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
