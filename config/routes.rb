Rails.application.routes.draw do
  resources :notepads
  root 'pages#main'
  get 'pages/main'
  resources :notes, only: %i[index new create destroy]
  get 'terminal/local_to_vm'
  get 'terminal/local_to_local'
  get 'terminal/remote_to_local'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
