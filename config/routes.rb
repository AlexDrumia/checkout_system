Rails.application.routes.draw do
	resources :items, only: :index do 
		post 'add', on: :member
		delete 'remove', on: :member
	end

	resources :baskets, only: :show 
end
