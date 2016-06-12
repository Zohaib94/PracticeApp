class Customer < ActiveRecord::Base
  has_many :receipts
  has_many :orders , :through => :receipts
  attr_accessible :name
end
