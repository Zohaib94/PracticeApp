class Order < ActiveRecord::Base
  has_many :receipts , :as => :imageable
  attr_accessible :ordername , :customer_id
end
