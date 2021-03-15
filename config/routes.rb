Rails.application.routes.draw do

  # STATIC ROUTES
  root "static#home"
  get '/about-us', to: "static#about"
  get '/services', to: "static#services"
  get '/help', to: "static#help"
  # SESSION ROUTES
  get '/login', to: "session#login"
  post '/login', to: "session#create"
  get '/logout', to: "session#destroy"

  # USER ROUTES && COMPANY ROUTES
  resources :company do
    resources :user
    resources :client
  end

  resources :user do
    resources :notes
  end

  # CLIENT ROUTES AND NESTED CLIENT CONTACT ROUTES
  resources :client do
    resources :client_contact
    resources :notes
  end
  # CASE ROUTES
  resources :case
end
