class Member < ActiveRecord::Base
  attr_accessible :email, :name
  belongs_to :organization
  #has_many :suggestions?
end
