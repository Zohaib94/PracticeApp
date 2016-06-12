class Employee < ActiveRecord::Base
=begin

	CALLBACKS:
		before_add
		after_add
		before_remove
		after_remove

=end

  has_many :subordinates, class_name: "Employee",
                          foreign_key: "manager_id" ,
                          after_add: :check_subordinate do
                          	def printRandom
	  							puts "Extension Function Called"
	  						end
                          end
 
  belongs_to :manager, class_name: "Employee" do
  	def printHello
  		puts "Hello"
  	end 
  end #DOES NOT WORK WITH BELONGS TO

  attr_accessible :name

  def check_subordinate(subordinate)
  	unless subordinate.manager_id
  		puts "Manager ID Not Found"
  	end
  end


end
