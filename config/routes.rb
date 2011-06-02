Tickets::Application.routes.draw do
  resources :statuses

  resources :tickets

  resources :notes

  root :to => 'tickets#index'
end
