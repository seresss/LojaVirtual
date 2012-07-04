Loja::Application.routes.draw do
  get "clientes/login"

  get "clientes/process_login"

  get "clientes/logout"

  get "clientes/my_account"

  get "clienter/login"

  get "clienter/process_login"

  get "clienter/logount"

  get "clienter/my_account"

  get "user/login"

  get "user/process_login"

  get "user/logount"

  get "user/my_account"

  get "login/login"

  resources :tipos

  resources :produtos

  resources :pedidos

  resources :clientes

  get "home/index"

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
   root :to => 'home#index'
   match 'produtos/:id/busca' => 'produtos#busca' , :as => :busca_produtos, :via => :get
   match 'clientes/process_login' => 'clientes#process_login', :via => [:get, :post]
   match 'clientes/login' => 'clientes#login', :as => :clientes_login, :via => [:get, :post]
   match 'clientes/logout' => 'clientes#logout', :as => :clientes_logout, :via => [:get, :post]
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
