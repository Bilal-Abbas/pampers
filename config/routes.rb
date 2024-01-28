Rails.application.routes.draw do
  resources :companies
  resources :credits
  resources :sales do
    post 'add_products_to_sale', on: :member
  end
  resources :sale_items
  resources :expenses
  resources :products
  devise_for :users
  resources :profits, only: [:index, :show] do
    collection do
      get 'sale', to: 'profits#profit_sales', as: 'sale'
      get 'sale_per_item/:sale_id', to: 'profits#profit_sale_items', as: 'sale_per_item'
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "products#index"
end
