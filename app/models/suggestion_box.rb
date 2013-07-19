# == Schema Information
#
# Table name: suggestion_boxes
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  passcode        :string(255)
#  suggestion_id   :integer
#  organization_id :integer
#  short_name      :string(255)
#  owner_email     :string(255)
#  owner_name      :string(255)
#

class SuggestionBox < ActiveRecord::Base
  attr_accessible :name , :passcode, :short_name #, :suggestions_attributes
  belongs_to :organization
  has_many :suggestions, :dependent => :destroy 
  #accepts_nested_attributes_for :suggestions #, allow_destroy: true
end
