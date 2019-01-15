Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'

  # get "/students", to: "students#index"
  # get "/students/new", to: "students#new"
  # post "/student", to: "students#create"

  # get "/cats/:id", to: "cats#show", as: "cat"
  
  # get "/cats/:id/edit", to: "cats#edit", as: "edit_cat"
  # patch "/cats/:id", to: "cats#update"
  # delete "/cats/:id", to: "cats#destroy"




end
