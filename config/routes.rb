Tickets::Application.routes.draw do
  resources :translations
  match 'translations/destroy/:key' => 'translations#destroy'

  resources :statuses

  resources :tickets

  resources :notes

  root :to => 'tickets#index'
end
