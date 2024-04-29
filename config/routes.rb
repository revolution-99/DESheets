Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :departments
  resources :employees
  resources :projects
  resources :assignments
end
