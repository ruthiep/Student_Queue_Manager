Rails.application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new",      :as => "login"
  get "signup" => "users#new",        :as => "signup"
  
  # get "users" => "users#index"
 #  get "users" => "users#new"
 #
 #  post "/users" => 'users#create'
 #  get "/users/:id" => 'users#show'
 #  get "/users/:id/edit" => 'users#edit'
 #  patch "/users/:id" => 'users#update'
  
  # delete "/users/:id" => 'users#destroy'
  
  get "/questions"  => 'questions#index'
  
  
  resources :users
  resources :sessions
  resources :questions
  resources :comments
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#welcome'
  
  get "/items" => 'items#index'
    
  get "/items/new" => 'items#new'
  
  post "/items" => 'items#create'
  
  get "/items/:id" => 'items#show'
  
  get "/items/:id/edit" => 'items#edit'
  
  post "/items/:id/update" => 'items#update'
  
  get "/items/:id/destroy" => 'items#destroy'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
