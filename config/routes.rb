Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
	resources :products
  root 'static_pages#front_page'

  get 'about', to: 'static_pages#about'
  get 'home', to: 'static_pages#home'
  get 'orders', to:'orders#index'

 	post 'static_pages/thankyou'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
