Rails.application.routes.draw do


  
  resources :members
  resources :cashes
  match "/wall"=> "b_loged#wall", via: :get
  match "/player"=> "b_loged#player", via: :get
  match "/investor"=> "b_loged#investor", via: :get
  match "/my_account"=> "b_loged#my_account", via: :get
  match "/cashier"=> "b_loged#cashier", via: :get
  match "/support"=> "b_loged#support", via: :get
  match "/events"=> "b_loged#events", via: :get

  devise_for :users
  match "/index"=> "b_core#index", via: :get

  match "/players"=> "b_core#pl", via: :get

  match "/investors"=> "b_core#inv", via: :get

  match "/about_us"=> "b_core#ab", via: :get

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'b_core#index'

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
