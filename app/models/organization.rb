# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  short_name :string(255)
#

class Organization < ActiveRecord::Base
 attr_accessible :name, :short_name, :suggestions_attributes, :suggestions, \
  :suggestion_boxes_attributes

 has_many :suggestion_boxes, :dependent => :destroy
 accepts_nested_attributes_for :suggestion_boxes

 has_many :suggestions, :dependent => :destroy
 accepts_nested_attributes_for :suggestions

 before_save :lowercase_short_name

 def lowercase_short_name
 	self.short_name.downcase
 end
end
