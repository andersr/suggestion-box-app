# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#

class Member < ActiveRecord::Base
  attr_accessible :email, :name
  belongs_to :organization
  has_many :suggestions
  # has_many :suggestions, :as => :suggestable
end
