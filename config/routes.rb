SuggestionBoxApp::Application.routes.draw do

	get "password_resets/new"

    #allow access to suggestion box via a short_name 
    #get "/suggestion_boxes/:suggestion_box_id/suggestions/new", to: "suggestions#new", as: ":short_name"

    #landing page default and confirmation
    root :to => 'invites#new'
    get 'thanks', to: "invites#thanks"

    #signup, login, logout
    get 'signup', to: "users#new", as: "signup"
    get 'login', to: "sessions#new", as: "login"
    get 'logout', to: "sessions#destroy", as: "logout"
    
    resources :invites, :organizations, :users, :sessions, :password_resets
    
    resources :suggestion_boxes do
        resources :suggestions
    end
    
    get ":short_name", to: "suggestions#new"

    default_url_options :host => "localhost:3000"
end
