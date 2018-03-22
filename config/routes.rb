Rails.application.routes.draw do
 
  get 'new/sessions'

  get 'new/new'

  get 'sessions/new'

  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'

  # resources :sessions, only: [:create, :destroy]
  # resource :home, only: [:show]

  root to: 'sessions#new'

  get 'home/show'


	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'static_pages#home'
	
	get '/home', to: 'static_pages#home'

	get '/help', to: 'static_pages#help'

	get '/about', to: 'static_pages#about'

	get '/contact', to: 'static_pages#contact'

	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'

	delete 'logout', to: 'sessions#destroy'

	get 'welcome/index'

	resources :users
	resources :microposts

end
