class SuggestionBox < ActiveRecord::Base
  attr_accessible :name

  has_many :suggestions, :dependent => :destroy
  
end
