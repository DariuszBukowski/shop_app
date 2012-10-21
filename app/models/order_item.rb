class OrderItem < ActiveRecord::Base
	attr_accessible :product_id, :quantity, :price
	belongs_to :order
	belongs_to :product
end