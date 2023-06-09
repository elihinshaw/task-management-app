Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  resources :tasks
  resources :comments
  resources :categories
  resources :task_dependencies
end
