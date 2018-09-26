Rails.application.routes.draw do

	root 'static_pages#home'
	resources :articles

	get 'signup', to: 'users#new'
	resources :users, except: [:new]

	resources :categories, except: [:destroy]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
