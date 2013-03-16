class SuggestionBox < ActiveRecord::Base
  attr_accessible :name, :passcode

  has_many :suggestions, :dependent => :destroy
  
end
