class Receipt < ActiveRecord::Base
  belongs_to :imageable , :polymorphic => :true
  attr_accessible :customer_id , :order_id #Just to check on console
end
