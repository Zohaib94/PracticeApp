class Employee < ActiveRecord::Base
  belongs_to :manager
  attr_accessible :name
end
