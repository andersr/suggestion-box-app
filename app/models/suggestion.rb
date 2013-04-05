# == Schema Information
#
# Table name: suggestions
#
#  id                   :integer          not null, primary key
#  message              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  member_name          :string(255)
#  member_email         :string(255)
#  anonymous_suggestion :boolean
#

class Suggestion < ActiveRecord::Base
  attr_accessible :suggestion_message, :member_name, :member_email, :anonymous_suggestion

  validates :suggestion_message, :presence => {:message => "Please enter a suggestion."}

  belongs_to :organization

  # accepts_nested_attributes_for :members
end
