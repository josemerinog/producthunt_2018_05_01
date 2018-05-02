class ProductsController < ApplicationController
	def index 
		# Se crea una colección de todos los Productos que hay en la tabla products.
		@products = Product.all
		
	end

	def new
		# Se crea una instancia vacía de un Producto
		@product = Product.new
		
	end


	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path, notice: "El Producto fue publicado con éxito."
			
		else
			render :new
		end
	end

	def show
		@product = Product.find(params[:id])
		
	end

	def edit
		@product = Product.find(params[:id])
		
	end

	
######################################## 
	private

	def product_params
		params.require(:product).permit(:name, :url, :description)
		
	end


end