Rails.application.routes.draw do
  root "static#home"

  # Login
  get '/login', to: "session#login"

end
