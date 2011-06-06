Tickets::Application.routes.draw do
  resources :translations

  resources :statuses

  resources :tickets

  resources :notes

  root :to => 'tickets#index'
end
