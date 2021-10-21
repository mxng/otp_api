Rails.application.routes.draw do
  post "/", to: "otp#index"
  post "/verification", to: "otp#verification"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
