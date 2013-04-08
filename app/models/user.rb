# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name
  #belongs_to :landing_page

  # validates_with GoodnessValidator, :fields => :email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


validates :email, :presence => {:message => "shouldn't be blank, yo!"}
  #, :message => "Must include email"
  #, :message => "sorry, email can't be blank" , :message => "Please enter an email address. Thx!" 

validates :email, :format => { :with => VALID_EMAIL_REGEX, :message => "This doesn't seem to be an email address." }

  #validates :email, format: { with: VALID_EMAIL_REGEX } #, :message => "bad format, dude!"
validates_uniqueness_of :email #, :message => "sorry, already taken, what!"

 # validates :name, :is_not_reserved => { :message => 'sorry, but the name is not valid' }
end
