class OrdersController < ApplicationController
	def show
		render :text => "cos"
   	end

   	def add_item
   		product = Product.find(params[:id])
   		already_ordered = false
   		order_item = cart_order.order_items.where(:product_id => product.id).first
   		if !order_item 
   			order_item = cart_order.order_items.create(:product_id => product.id, :quantity => 1, :price => product.price)
   		else
   			order_item.quantity += 1
   			order_item.price += product.price
   			order_item.update_attributes(params[:order_item])
   		end
   		redirect_to '/cart/'
   	end
end