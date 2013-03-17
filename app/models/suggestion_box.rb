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
  attr_accessible :name #, :passcode
  # belongs_to :organization
  # has_many :suggestions, :as => :suggestable, :dependent => :destroy 
end
