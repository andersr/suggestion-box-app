# == Schema Information
#
# Table name: suggestion_boxes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  passcode   :string(255)
#

class SuggestionBox < ActiveRecord::Base
  attr_accessible :name , :passcode

  belongs_to :organization

  has_secure_password
  
  validates :passcode, :presence => {:message => "Sorry, this doesn't look like the right code :-/"}
   
  #has_many :suggestions, :dependent => :destroy 
end
