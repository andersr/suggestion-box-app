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
      attr_accessible :message, :anonymous, :name, :email, :spam_answer
      belongs_to :suggestion_box
      validates :message, presence: true
      acts_as_textcaptcha :api_key => 'azbjl8lm6u0cg4kos80o44cssdem847a', :bcrypt_salt => '$2a$10$UGMpZISBfrKcnRgatlu5P.'

      #validates :suggestion_message, :presence => {:message => "Please enter a suggestion."}
    end
