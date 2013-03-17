# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
 attr_accessible :name
 # has_many :suggestion_boxes, :dependent => :destroy
 # has_many :members
 # has_one :session #org passcodes

end
