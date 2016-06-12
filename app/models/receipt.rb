class Receipt < ActiveRecord::Base
  belongs_to :customer
  belongs_to :order
  attr_accessible :customer_id , :order_id #Just to check on console
end
