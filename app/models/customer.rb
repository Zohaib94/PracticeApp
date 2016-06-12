class Customer < ActiveRecord::Base
  has_many :receipts , :as => :imageable
  attr_accessible :name

  

end
