class ItemsController < ApplicationController
	def index
		@items = Item.all
		render :index
	end

	def add
		basket = Basket.first
		item = Item.find(params[:id])
		basket.items << item
		render json: basket.items
	end
end

