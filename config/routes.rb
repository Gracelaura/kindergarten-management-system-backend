Rails.application.routes.draw do
  resources :attendances, only: [:index,:create]
  resources :disciplines,only: [:index, :show, :create, :update, :destroy]
  resources :parent_students, only: [:index, :create]
  resources :parents,only: [:index, :show, :create]
  resources :students
  resources :teachers,only: [:index, :show, :create]
  resources :classrooms
  post '/login', to: 'auth#create'
  post '/parent_login', to: 'parent_auth#create'
  get '/profile', to: 'teachers#profile'
  get 'teacher/parent/', to: 'teachers#classroom_parents'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
