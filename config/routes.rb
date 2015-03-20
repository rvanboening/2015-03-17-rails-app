RailsApp::Application.routes.draw do
  
  root :to => "users#index"
  
  get "/users" => 'users#index'

  get "/users/new" => 'users#new'
  
  post "/users" => 'users#create'
  
    # post = HTTP Verb (e.g. "get", "post")
    # "users/create" = Path of the request (i.e. the stuff in the URL bar, or the action of the form, or where the link takes us, etc.)
    # => = The path corresponds to...
    # users#create'
      # users = controller
      # "#" (separates controller from what follows)
      # create = name of the method in the controller to run

  get "/users/:id/edit" => 'users#edit'
  
  post "/users/:id" => 'users#update'
  
  get "/users/:id" => 'users#show'
  
  delete "/users/:id" => 'users#destroy'

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
