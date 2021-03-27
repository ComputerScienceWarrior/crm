Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'oauth_login', sign_out: 'oauth_logout', sign_up: 'oauth_register'}, controllers: {omniauth_callbacks: 'omniauth'}
  # STATIC ROUTES
  root "static#home"
  get '/about-us', to: "static#about"
  get '/services', to: "static#services"
  get '/help', to: "static#help"

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
    resources :client_contacts
    resources :notes
  end
  # CASE ROUTES
  resources :case
end
