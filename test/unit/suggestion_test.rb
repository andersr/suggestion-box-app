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

require 'test_helper'

class SuggestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
