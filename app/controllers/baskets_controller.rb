class BasketsController < ApplicationController
	def show
		@basket = Basket.first
		render :show
	end
end

