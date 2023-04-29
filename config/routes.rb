Rails.application.routes.draw do
  
  get  '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :customers, only: [:create, :index, :show, :destroy] do
    resources :addresses, only: [:create, :index, :show, :destroy]
    resources :customer_address, only: [:create, :index, :show, :destroy]
    
   end
   resources :restaurants, only: [:create, :index, :show, :destroy] do
    resources :restaurant_menu_items, only: [:create, :index, :show, :destroy]
    resources :menu_items, only: [:create, :index, :show, :destroy]
   end

   resources :order , only: [] do
    patch :accept
    patch :decline
    resources :order_status
    resources :order_menu_item
   end
   resources :payments 
   resources :delivery_driver
   resources :rating
  # Defines the root path route ("/")
   #root "Home#index"
end
