Rails.application.routes.draw do
  resources :users
  resources :alpha_blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'pages#home'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "about" , to: 'pages#about'

  resources :alpha_blogs, only: [:show, :index, :new, :create, :edit, :update, :delete]
  resources :users, only: [:show, :index, :edit, :update, :delete]

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
