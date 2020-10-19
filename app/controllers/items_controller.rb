class ItemsController < ApplicationController
	def index
		@items = Item.all
		render :index
	end

	def add
		basket = Basket.first
		item = Item.find(params[:id])
		basket.items << item
		redirect_to items_url
	end

	def remove
		basket = Basket.first
		item = Item.find(params[:id])
		basket.items.delete(item)
		redirect_to basket_url
	end
end

