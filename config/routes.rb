Bus::Application.routes.draw do

  root to: "static#home"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :companies

  resources :activities

  resources :admin_emails

  resources :user_emails

  get '/contact_us', to: "contact_us#new", as: :contact_us
  # get '/about_us', to: "about_us#new", as: :about_us
  post '/contact_us', to: "contact_us#create", as: :contact_us


  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  resources :side_dishes

  resources :ingredients


  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks"} 
  # ActiveAdmin.routes(self)

  resources :users

  get "select-company", to: "users#edit", as: :company_select

  get "/select-company", to: "users#add_company", as: :company_select
  post "/select-company", to: "users#add_company", as: :company_select

  get "/select-company", to: "add_companies#edit_company_select"


  get "/about_us", to: "navbar_bottom#about_us", as: :nav_about_us
  # get "navbar_bottom/contact_us"
  get "/faq", to: "navbar_bottom#faq", as: :faq
  get "/investors", to: "navbar_bottom#investors", as: :investors
  get "/participating_businesses", to: "navbar_bottom#participating_businesses", as: :participating_businesses
  get "/how_it_works", to: "navbar_bottom#how_it_works", as: :how_it_works
  get "/process", to: "navbar_bottom#process", as: :process
  get "/team", to: "navbar_bottom#team", as: :team

  get "static/menu"
  


  resources :cuisines
  resources :restaurants do
    resources :dishes
  end
  
  resources :dishes do
    resources :order_dishes
  end

  resources :orders


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
