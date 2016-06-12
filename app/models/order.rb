class Order < ActiveRecord::Base
  has_and_belongs_to_many :customers
  attr_accessible :ordername , :customer_id
end
