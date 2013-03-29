class EmailValidator < ActiveModel::Validator

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  def validate(record)
	  if #no email is present

        elsif #email is not well formatted
        else #email is not unique
        end #if else
    end # def
end # class