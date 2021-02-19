Rails.application.routes.draw do

  # STATIC ROUTES
  root "static#home"
  # SESSION ROUTES
  get '/login', to: "session#login"
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
