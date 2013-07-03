# == Schema Information
#
# Table name: suggestions
#
#  id                :integer          not null, primary key
#  message           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  anonymous         :boolean
#  member_id         :integer
#  suggestion_box_id :integer
#

    class Suggestion < ActiveRecord::Base
      attr_accessible :message, :anonymous
      belongs_to :suggestion_box
      #belongs_to :member
      #accepts_nested_attributes_for :user

      validates :message, presence: true

      #validates :suggestion_message, :presence => {:message => "Please enter a suggestion."}
    end
