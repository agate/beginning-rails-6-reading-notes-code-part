Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'

  get '/ajax', to: 'ajax#index'
  get '/ajax/comments', to: 'ajax#comments'
  post '/ajax/comments', to: 'ajax#create_comment'
  get '/ajax/comments/new', to: 'ajax#new_comment'
end
