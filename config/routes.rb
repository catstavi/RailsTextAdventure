Rails.application.routes.draw do

  post "/login",         to: 'sessions#create',     as: :login
  post "/logout",        to: 'sessions#destroy',    as: :logout

  get "/users/new",      to: 'users#new',           as: :new_user
  post "/users/new",     to: 'users#create'
  get "/dash",           to: 'users#show',          as: :my_account

  get "maps/:id/add_room",   to: 'maps#add_room',  as: :new_room
  post "maps/:id/add_room",   to: 'rooms#create'

  get "rooms/:id/add_item",   to: 'rooms#add_item',  as: :new_item
  post "rooms/:id/add_item",   to: 'items#create'
  get "rooms/:id/add_path",   to: 'rooms#add_path',  as: :new_path
  post "rooms/:id/add_path",   to: 'paths#create'

  resources :maps
  resources :rooms
  resources :items
  # get "/maps/new",       to: 'maps#new',            as: :new_map
  # post "maps/new",       to: 'maps#create'

  root 'pages#home'

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
