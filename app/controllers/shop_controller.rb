class ShopController < ApplicationController
	before_filter :init_search_variables

	def init_search_variables
	  	@q = Product.search(params[:q])
	  	@result = @q.result(:distinct => true)
	end

    def index
    	@categories = Category.all
        @products = Product.all
    end
end
