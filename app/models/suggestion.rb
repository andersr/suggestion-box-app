class Suggestion < ActiveRecord::Base
  attr_accessible :message
  belongs_to :suggestion_box
  accepts_nested_attributes_for :members
  
end
