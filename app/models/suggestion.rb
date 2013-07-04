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
      attr_accessible :message, :anonymous, :name, :email
      belongs_to :suggestion_box
      validates :message, presence: true
      acts_as_textcaptcha :api_key     => 'dpeeqh5p81s0084ww0c004800ea9r39s',
                      :bcrypt_salt => '$2a$10$7QKuzTiPaFIRMQD37Y5Y4.'

      #validates :suggestion_message, :presence => {:message => "Please enter a suggestion."}
    end
