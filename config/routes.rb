Rails.application.routes.draw do
  resources :microposts
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'static_pages#login'
	
	get 'static_pages/home'

	get 'static_pages/help'

	get 'static_pages/about'

	get 'static_pages/contact'

	resources :users
	get 'welcome/index'

end
