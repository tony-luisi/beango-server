Rails.application.routes.draw do
  resources :orders do
    resources :order_items, controller: 'order_items'
  end
  resources :products
  resources :order_items, :path => '/order-items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
