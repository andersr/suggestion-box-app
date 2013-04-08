# == Schema Information
#
# Table name: landing_pages
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class LandingPage < ActiveRecord::Base
  #attr_accessible :users_attributes
  #has_many :users 
  #accepts_nested_attributes_for :users

end
