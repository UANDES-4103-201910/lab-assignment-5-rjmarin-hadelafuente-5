Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ticket_zones
  resources :ticket_types do
    resources :tickets
  end
  resources :tickets
  resources :users
  resources :events
  resources :event_venues
end
