class Order < ActiveRecord::Base
	attr_accessible :confirmed
	has_many :order_items

	belongs_to :buyer
end