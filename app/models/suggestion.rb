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
  validates :email, format: { with: VALID_EMAIL_REGEX, 
                              message:"Please enter a valid email address.",
                              :if => :should_validate_email? } 

  acts_as_textcaptcha :bcrypt_salt => '$2a$10$UGMpZISBfrKcnRgatlu5P.', #ENV["TEXTCAPTCHA_BCRYPT_SALT"]
                      :bcrypt_cost => '4',
                      :questions => [{ 'question' => '1+1 equals?', 'answers' => '2,two' },
                                    { 'question' => 'The green hat is what color?', 'answers' => 'green,Green' },
                                    {'question' => 'Is ice hot or cold?', 'answers' => 'cold,Cold' },
                                    {'question' => 'What color is an orange?', 'answers' => 'orange,Organge'},
                                    {'question' => 'What is two plus 3?', 'answers' => '5,five' },
                                    {'question' => 'What is 5 times two?', 'answers' => '10,ten' },
                                    {'question' => 'How many colors in green, brown, foot, blue?', 'answers' => '3,three'},
                                    {'question' => 'What\'s George\'s name?', 'answers' => 'george,George'},
                                    {'question' => 'What\'s 11 minus 1?', 'answers' => '10,ten' },
                                    {'question' => 'Is boiling water hot or cold?', 'answers' => 'hot,Hot' },
                                    {'question' => 'What color is my blue shirt today?', 'answers' => 'blue,Blue' },
                                    {'question' => 'What is 16 plus four?', 'answers' => '20,twenty' }
                                    ]

  #:api_key => 'azbjl8lm6u0cg4kos80o44cssdem847a',
  
  # def perform_textcaptcha?
  #   false
  # end
  
  def should_validate_email?
    true unless self.email.empty?
  end

  # def perform_textcaptcha?
  #   false
  # end

 
end
