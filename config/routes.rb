Rails.application.routes.draw do

  #resources :task
  root 'tasks#index'

  get '/tasks', to: 'tasks#index'
  post '/tasks', to: 'tasks#create'

  get '/task/new', to: 'tasks#new'

  get '/task/:id/edit', to: 'tasks#edit', as: :edit_task

  get '/task/:id', to: 'tasks#show', as: :task
  patch '/task/:id', to: 'tasks#update'
  delete '/task/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
