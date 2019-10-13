Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'static_pages#home'
	
	resources :users

	get '/signin' => 'sessions#new'
  	post '/signin' => 'sessions#create'
  	get '/logout', to: 'sessions#destroy', as: 'logout'
  	

	
end
