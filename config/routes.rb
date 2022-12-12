Rails.application.routes.draw do
  resources :discount_types
  resources :store_item_tags
  resources :order_items
  resources :orders
  resources :users
  resources :taxes
  resources :item_categories
  resources :store_items
  resources :discounts
 # get 'home/index'
  root to: 'orders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
