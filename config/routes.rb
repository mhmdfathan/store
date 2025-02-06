Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # get "/products", to: "products#index"
  # post "/products", to: "products#create"
  # get "/products/:id", to: "products#show"
  resources :products
  root "products#index"
  # Resource Routes
  # Typing out these routes every time is redundant, so Rails provides a shortcut for defining them. To create all of the same CRUD routes, replace the below CRUD routes with this single line:



  # CRUD ACTIONS

  # get "/products", to: "products#index"
  # Index - Shows all the records

  # get "/products/new", to: "products#new"
  # New - Renders a form for creating a new record

  # post "/products", to: "products#create"
  # Create - Processes the new form submission, handling errors and creating the record 

  # get "/products/:id", to: "products#show"
  # Show - Renders a specific record for viewing

  # get "/products/:id/edit", to: "products#edit"
  # Edit - Renders a form for updating a specific record
  
  # patch "/products/:id", to: "products#update"
  # Update - Handles the edit form submission, handling errors and updating the record
  # put "/products/:id", to: "products#update"

  # delete "/products/:id", to: "products#destroy"
  # Destroy - Handles deleting a specific record

  
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
