#Rails.application.routes.draw do
  #resources :songs
  #resources :users
  
  #devise_for :users

  #resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
    #root to: 'songs#index'
#end

#Rails.application.routes.draw do
  #devise_for :users, controllers: { registrations: 'registrations' }

  # Wrapping in devise_scope to explicitly define routes
  #devise_scope :user do
    #authenticated :user do
    #  root to: 'songs#index', as: :authenticated_root
    #end

   # unauthenticated :user do
     # root to: 'devise/sessions#new', as: :unauthenticated_root
    #end
  #end

  #resources :songs
 # resources :users
  
  # Health check route
  #get "up" => "rails/health#show", as: :rails_health_check
#end


Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  
  # Redirect authenticated users to songs path
  authenticated :user do
    root to: 'songs#index', as: :authenticated_root
  end

  # Redirect unauthenticated users to the Devise sign-in page
  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end

  resources :songs
  resources :users
  
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
