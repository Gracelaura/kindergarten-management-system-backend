Rails.application.routes.draw do
  resources :disciplines
  resources :attendances
  resources :parents
  resources :grades
  resources :students
  resources :teachers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
