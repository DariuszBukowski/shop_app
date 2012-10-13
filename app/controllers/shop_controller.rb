class ShopController < ApplicationController
    def new
    end

    def index
        render :text => "hello in my shop"
    end
end
