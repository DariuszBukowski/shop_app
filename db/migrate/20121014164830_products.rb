class Products < ActiveRecord::Migration
  def up
  	create_table :products do |product|
  		product.string :name
  		product.text :description
  		product.integer :price
  		product.timestamps
  	end
  end

  def down
  	drop_table :products
  end
end
