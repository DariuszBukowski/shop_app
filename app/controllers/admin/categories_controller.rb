class Admin::CategoriesController < Admin::AdminController
	def index
		@categories = Category.all
   	end

   	def edit
   		@category = Category.find(params[:id])
   	end

   	def update
     	@category = Category.find(params[:id])
      	if @category.update_attributes(params[:category])
         	redirect_to('/admin/categories/', {:notice => 'Updated category.'})
      	else
         	render :action => 'edit'
      	end
  	end

   	def destroy
      Category.find(params[:id]).destroy
      redirect_to :action => 'index'
   	end

   	def new
   		@category = Category.new
   	end

   	def create
    	@category = Category.new(params[:category])
    	if @category.save
      		redirect_to('/admin/categories/', {:notice => 'Created category.'})
    	else
      		render :action => "new"
    	end
  	end
end