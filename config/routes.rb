Rails.application.routes.draw do
  root 'pages#main'
  get 'pages/main'
  resources :notes, only: %i[index new create destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
