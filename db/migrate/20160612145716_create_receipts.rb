class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.references :customer
      t.references :order

      t.timestamps
    end
    add_index :receipts, :customer_id
    add_index :receipts, :order_id
  end
end
