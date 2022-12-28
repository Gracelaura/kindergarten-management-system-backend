Rails.application.routes.draw do
  resources :disciplines, only: [:index, :show, :create, :destroy]
  resources :attendances, only: [:index, :create]
  resources :parents, only: [:index, :show, :create]
  resources :grades, only: [:index, :show]
  resources :students
  resources :teachers, only: [:index, :show, :create]
  resources :parent_students, only: [:index]
  get '/profile', to: 'teachers#profile'
  get '/parent', to: 'parents#parent_profile'
  post '/login', to: 'auth#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
