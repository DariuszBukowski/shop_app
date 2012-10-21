class BuyersController < ApplicationController
	def cart
		@cart = cart_order
		@price = 0
	end
end