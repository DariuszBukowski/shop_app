class ShopController < ApplicationController
    def new
    end

    def index
    	@categories = Category.all
        @products = Product.all
    end
end
