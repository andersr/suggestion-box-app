class Suggestion < ActiveRecord::Base
  attr_accessible :message

  belongs_to :suggestion_box
  
end
