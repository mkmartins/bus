Bus::Application.routes.draw do

  resources :companies


  resources :admin_emails

  resources :user_emails

  get '/contact_us', to: "contact_us#new", as: :contact_us
  get '/about_us', to: "about_us#new", as: :about_us
  post '/contact_us', to: "contact_us#create", as: :contact_us


  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  resources :side_dishes

  resources :ingredients


  devise_for :users

  resources :users, only: [:index, :new]




  get "navbar_bottom/about_us"
  get "navbar_bottom/contact_us"
  get "navbar_bottom/faq"
  get "navbar_bottom/investors"
  get "navbar_bottom/participating_businesses"
  get "navbar_bottom/how_it_works"
  get "navbar_bottom/process"
  get "navbar_bottom/team"

  get "static/menu"
  


  resources :cuisines
  resources :restaurants do
    resources :dishes
  end
  
  resources :dishes do
    resources :order_dishes
  end

  resources :orders


  root to: "static#home"


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
