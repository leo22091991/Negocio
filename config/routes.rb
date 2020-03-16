Rails.application.routes.draw do
  resources :carts
  resources :account_lines
  resources :account_payments
  resources :current_accounts
  resources :account_statuses
  resources :sale_lines
  resources :sales
  resources :products
  resources :providers
  resources :types
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
