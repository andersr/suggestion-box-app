# == Schema Information
#
# Table name: suggestions
#
#  id                   :integer          not null, primary key
#  suggestion_message   :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  member_name          :string(255)
#  member_email         :string(255)
#  anonymous_suggestion :boolean
#  organization_id      :integer
#

require 'test_helper'

class SuggestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
