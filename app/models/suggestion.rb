# == Schema Information
#
# Table name: suggestions
#
#  id                   :integer          not null, primary key
#  suggestion_message   :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  anonymous_suggestion :boolean
#  member_id            :integer
#

class Suggestion < ActiveRecord::Base
  attr_accessible :suggestion_message, :anonymous_suggestion
  belongs_to :suggestion_box
  belongs_to :member

  validates :suggestion_message, :presence => {:message => "Please enter a suggestion."}
end
