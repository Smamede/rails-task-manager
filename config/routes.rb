Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #read all the tasks

  get "/tasks", to: "tasks#index"

  #read a page from one specific task

  get "/task/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  get "/task/:id", to: "tasks#show", as: :task

  #create


  #update

  get "/task/:id/edit", to: "tasks#edit", as: :edit_task
  patch "/task/:id", to: "tasks#update"

  #delete

  delete "/task/:id", to: "tasks#destroy", as: :destroy_task

end
