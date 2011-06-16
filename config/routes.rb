Tickets::Application.routes.draw do
  resources :translations
  match 'translations/destroy/:lang/:chain' => 'translations#destroy'

  resources :statuses

  resources :tickets

  resources :notes

  root :to => 'tickets#index'
end
