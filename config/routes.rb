Rails.application.routes.draw do
	resources :products
  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

  #post 'thankyou' , to: 'static_pages#thankyou'

 post 'static_pages/thankyou'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html







end
