class ProductsController < ApplicationController
	def index 
		# Se crea una colección de todos los Productos que hay en la tabla products.
		@products = Product.all
		
	end

	def new
		# Se crea una instancia vacía de un Producto
		@product = Product.new
		
	end
end