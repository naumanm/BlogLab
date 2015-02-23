Rails.application.routes.draw do
  root 'author#index'

  #resources :authors

  # Author

  get '/author', to: 'author#index'

  get '/author/new', to: 'author#new'

  get '/author/:id', to: 'author#show'

  get '/author/:id/edit', to: 'author#edit'

  post '/author', to: 'author#create'

  put '/author/:id', to: 'author#update'

  delete '/author/:id', to: 'author#destroy'

  # Post

  get '/post', to: 'post#index'

  get '/post/new', to: 'post#new'

  get '/post/:id', to: 'post#show'

  get '/post/:id/edit', to: 'post#edit'

  post '/post', to: 'post#create'

  put '/post/:id', to: 'post#update'

  delete '/post/:id', to: 'post#destroy'


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
