# == Schema Information
#
# Table name: suggestion_boxes
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  passcode        :string(255)
#  suggestion_id   :integer
#  organization_id :integer
#  short_name      :string(255)
#  owner_email     :string(255)
#  owner_name      :string(255)
#

require 'test_helper'

class SuggestionBoxTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
