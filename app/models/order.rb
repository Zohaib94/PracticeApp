class Order < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :ordername
end
