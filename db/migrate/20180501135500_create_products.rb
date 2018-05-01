# Ojo: Colocar al final de la clase de la que hereda [5.1]
class CreateProducts < ActiveRecord::Migration[5.1]
	
	def change
		create_table :products do |t|

			t.string :name
			t.string :url
			t.text :description

			t.timestamps null: false
		end
		
	end
	
end