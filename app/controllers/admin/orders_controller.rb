class Admin::OrdersController < Admin::AdminController
	def index
		@orders = Order.where(:confirmed => true)
	end
end