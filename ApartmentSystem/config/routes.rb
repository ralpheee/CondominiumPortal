Rails.application.routes.draw do
  resources :messages
  resources :units
  resources :tenants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
