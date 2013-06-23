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
#  password_digest :string(255)
#

class Member < ActiveRecord::Base

	has_secure_password
	# will validate for presence of password and match with password_confirmation

	attr_accessible :name, :email, :password, :password_confirmation


	#validates_uniqueness_of :email

	belongs_to :organization
	has_many :suggestions

end
