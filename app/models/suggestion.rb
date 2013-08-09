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
#  name              :string(255)
#  email             :string(255)
#

class Suggestion < ActiveRecord::Base
  attr_accessible :message, :name, :email, :spam_answer # :anonymous, 
  belongs_to :suggestion_box
  validates :message, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX, message:"Please enter a valid email address." } 

  acts_as_textcaptcha 	:api_key => 'azbjl8lm6u0cg4kos80o44cssdem847a',
  						:bcrypt_salt => '$2a$10$UGMpZISBfrKcnRgatlu5P.',
  						:bcrypt_cost => '3',
  						:questions   => [{ 'question' => '1+1 equals?', 'answers' => '2,two' },
                                       { 'question' => 'The green hat is what color?', 'answers' => 'green' }],
              :message => "Sorry, incorrect answer. Please try again."
 
end
