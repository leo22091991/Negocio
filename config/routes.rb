Rails.application.routes.draw do
  resources :positions
  resources :users
  resources :discounts
  resources :salary_discounts
  resources :assets
  resources :asset_types
  resources :salary_assets
  get '/salaries/charge'=>'salaries#charge'
  post '/salaries/charge'=>'salaries#charge'
  get '/sales/sales-menu'=>'sales#sales-menu'
  resources :salaries
  get '/welcome/cart'=>'welcome#cart'
  root 'welcome#index'
  patch '/carts' => 'carts#update'
  patch '/sale_lines/update_quantity' => 'sale_lines#update_quantity'
  delete '/carts/delete_sale_line' => 'carts#delete_sale_line'


  resources :carts
  resources :account_payments
  resources :current_accounts
  resources :account_statuses
  resources :sale_lines
  resources :sales
  resources :products
  resources :providers
  resources :types
  resources :welcome
  #root 'welcome#cart_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
