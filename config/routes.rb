SuggestionBoxApp::Application.routes.draw do

  resources :suggestion_boxes
  get "/:short_name" => "suggestion_boxes#show"

  #root :to => 'invites#new'
  #get '/thanks', to: "invites#thanks"
  
  #get "suggestion-boxes" => "suggestion_boxes#index"
  #get "suggestion-boxes/new" => "suggestion_boxes#new"
  
  #rewrite '/organization/name' to /short_name
  # or just link_to short_name_path
  #get "/:short_name" => "suggestion-boxes#show"

  # resources :invites, :suggestion_boxes, :suggestions, :organizations

 #get "/suggestion_boxes", => "suggestion_boxes#index" 
 #resources :suggestion_boxes #, :as => "suggestion-boxes"

  #resources :invites
  #get "/thanks" => "invites#thanks"

  
  # do
  #   collection do
  #     get 'thanks'
  #   end
  # end
  
  #get "/invites/:id", :to => 'invites#show', :as => '/thanks'#

  #get "/users" => 'users#index'
  #get "/members" => 'members#index'
  #landing page


  #landing page confirmation
  #post "/invites", :to => 'invites#create'

  #resources :invites
  

  #post 'invites#show', :as => '/thanks'

 

  #

  #get "landing_page/new"

  # get "landing_page/create"



  #match '/bcl' => 'suggestions#new', :as => "/bcl"

  #match '/users/:id' => 'users#thanks', :as => '/thanks'

  #match 'users/:id' => 'thanks', :as => "/thanks"

 
  #:users,:organizations, :suggestion_boxes

  #resources :landing_pages, :organizations, :sessions, :members

  #get '/bcl/new' => 'suggestions#new'



 # match 'users/:id' => 'users#thanks'

#route /bcl/new to suggestion/new 


  

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
