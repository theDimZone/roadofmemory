Rails.application.routes.draw do

  get '/veteran/:id', to: 'veteran#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
