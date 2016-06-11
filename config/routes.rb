Rails.application.routes.draw do
  # Routes for the Conference resource:
  # CREATE
  get "/conferences/new", :controller => "conferences", :action => "new"
  post "/create_conference", :controller => "conferences", :action => "create"

  # READ
  get "/conferences", :controller => "conferences", :action => "index"
  get "/conferences/:id", :controller => "conferences", :action => "show"

  # UPDATE
  get "/conferences/:id/edit", :controller => "conferences", :action => "edit"
  post "/update_conference/:id", :controller => "conferences", :action => "update"

  # DELETE
  get "/delete_conference/:id", :controller => "conferences", :action => "destroy"
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get "/schools/new", :controller => "schools", :action => "new"
  post "/create_school", :controller => "schools", :action => "create"

  # READ
  get "/schools", :controller => "schools", :action => "index"
  get "/schools/:id", :controller => "schools", :action => "show"

  # UPDATE
  get "/schools/:id/edit", :controller => "schools", :action => "edit"
  post "/update_school/:id", :controller => "schools", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "schools", :action => "destroy"
  #------------------------------

  # Routes for the Conference_history resource:
  # CREATE
  get "/conference_histories/new", :controller => "conference_histories", :action => "new"
  post "/create_conference_history", :controller => "conference_histories", :action => "create"

  # READ
  get "/conference_histories", :controller => "conference_histories", :action => "index"
  get "/conference_histories/:id", :controller => "conference_histories", :action => "show"

  # UPDATE
  get "/conference_histories/:id/edit", :controller => "conference_histories", :action => "edit"
  post "/update_conference_history/:id", :controller => "conference_histories", :action => "update"

  # DELETE
  get "/delete_conference_history/:id", :controller => "conference_histories", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
