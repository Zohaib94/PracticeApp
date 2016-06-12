class Order < ActiveRecord::Base
  has_many :receipts
  has_many :customers , :through => :receipts
  attr_accessible :ordername , :customer_id
end
