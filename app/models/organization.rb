class Organization < ActiveRecord::Base
 attr_accessible :name
 has_many :suggestion_boxes, :dependent => :destroy
 has_many :members
 #sessions?

end
