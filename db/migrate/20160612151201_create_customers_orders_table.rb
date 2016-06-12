class CreateCustomersOrdersTable < ActiveRecord::Migration
  def change
  	create_table :customers_orders do |t|  
	  	t.references :customer
	  	t.references :order
	  	t.timestamps
    end
  end
end
