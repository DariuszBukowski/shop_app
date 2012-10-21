class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_buyer, :cart_order

  def current_buyer
    if !session[:buyer_id]
      	@buyer = Buyer.create
      	session[:buyer_id] = @buyer.id
    end
	Buyer.find(session[:buyer_id])
  end

  def cart_order
  	@orders = current_buyer.orders.where(:confirmed => false)
  	if @orders == []
  		@order = current_buyer.orders.create(:confirmed => false)
  		return @order
  	end
  	@orders.first
  end
end
