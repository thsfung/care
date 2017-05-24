Rails.application.routes.draw do
  resources :payments
  resources :icompanies
  resources :mvas
  resources :ehis
  resources :insurances
  resources :invoices
  resources :services
  resources :visits
  resources :staffs
  resources :doctors
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
