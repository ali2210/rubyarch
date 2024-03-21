Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :alpha_blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'pages#home'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"



  # about route
  get "about" , to: 'pages#about'

  # resouces for alpha_blogs
  resources :alpha_blogs, only: [:show, :index, :new, :create, :edit, :update, :delete]
  
  # resources allocate for users
  resources :users, only: [:show, :index, :edit, :update, :delete]


  # signup get route
  get 'signup', to: 'users#new'

  # resources allocation when user signup
  resources :users, except: [:new]


  # user login session request types [get, post & delete]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  resources :category, except: [:destroy]


end
