class SuggestionBox < ActiveRecord::Base
  attr_accessible :name, :passcode
  belongs_to :organization
  has_many :suggestions, :dependent => :destroy
  
end
