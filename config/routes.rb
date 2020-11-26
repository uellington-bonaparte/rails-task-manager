Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index'

  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show'

  # As a user, I can add a new task
  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task
end
