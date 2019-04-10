Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tickets
  resources :users
  resources :ticket_types
  resources :events
  resources :event_venues
end
