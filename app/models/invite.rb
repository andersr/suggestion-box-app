# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  email      :string(255)
#

class Invite < ActiveRecord::Base
  attr_accessible :email  # :id

  validates :email, :presence => {:message => "Please enter an email address."}

end
