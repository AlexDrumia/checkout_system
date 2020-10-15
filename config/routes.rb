Rails.application.routes.draw do
	resources :items, only: :index
	resources :baskets, only: :index
end
