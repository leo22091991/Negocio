Rails.application.routes.draw do
  
  resources :user_permissions
  devise_for :users
  scope "/admin" do
    resources :users
  end
  #get  'users/admin_new' => 'users#admin_new'
  #post 'users/admin_create' => 'users#admin_create'
  #post 'users/create' => 'users#create'
  resources :users
  resources :positions
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
  post '/products/edit_multiple'=>'products#edit_multiple'
  put '/products/update_multiple'=>'products#update_multiple', as: 'update_multiple_products'
  resources :products #, :collection => {:edit_multiple => :post, :update_multiple => :put}
  resources :providers
  resources :types
  resources :welcome
  #root 'welcome#cart_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
