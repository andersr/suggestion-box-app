class Session < ActiveRecord::Base
  attr_accessible :passcode

  has_one :organization
  
end
