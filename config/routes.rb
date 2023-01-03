Rails.application.routes.draw do
  resources :attendances
  resources :disciplines
  resources :parent_students
  resources :parents
  resources :students
  resources :teachers
  resources :classrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
