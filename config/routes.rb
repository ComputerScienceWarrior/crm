Rails.application.routes.draw do

  # STATIC ROUTES
  root "static#home"
  get '/about-us', to: "static#about"
  get '/services', to: "static#services"
  get '/help', to: "static#help"
  # SESSION ROUTES
  get '/login', to: "session#login"
  post '/login', to: "session#login"
  get '/logout', to: "session#destroy"
  # USER ROUTES
  resources :user
  # COMPANY ROUTES
  resources :company
  # CLIENT ROUTES
  resources :client
  # CLIENT_CONTACT ROUTES
  resources :client_contact
  # NOTE ROUTES
  resources :note
  # CASE ROUTES
  resources :case
end
