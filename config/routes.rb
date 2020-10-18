Rails.application.routes.draw do
	resources :items, only: :index do 
		post 'add', on: :member
	end
end
