class Admin::ProductsController < Admin::AdminController
	def index
		@products = Product.all
   	end

	def edit
		@product = Product.find(params[:id])
   	end

   	def update
     	@product = Product.find(params[:id])
      	if @product.update_attributes(params[:product])
         	redirect_to('/admin/products/', {:notice => 'Updated product.'})
      	else
         	render :action => 'edit'
      	end
  	end

   	def destroy
      Product.find(params[:id]).destroy
      redirect_to :action => 'index'
   	end

   	def new
   		@product = Product.new
   	end

   	def create
    	@product = Product.new(params[:product])
    	if @product.save
      		redirect_to('/admin/products/', {:notice => 'Created product.'})
    	else
      		render :action => "new"
    	end
  	end
end