class Customer < ActiveRecord::Base
  has_one :order
  attr_accessible :name
end
