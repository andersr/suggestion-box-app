# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  passcode   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Session < ActiveRecord::Base
  attr_accessible :passcode
  # belongs_to :organization

end
