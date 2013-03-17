class Organization < ActiveRecord::Base
 attr_accessible :name
 has_many :suggestion_boxes
 has_many :members

end
