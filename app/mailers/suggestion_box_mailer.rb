class SuggestionBoxMailer < ActionMailer::Base
  include ActionView::Helpers::TextHelper
  default from: 'help@chirpybox.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.suggestion_box_mailer.new_suggestion_notification.subject
  #
 # def welcome_email(user)
 #    @user = user
 #    @url  = 'http://example.com/login'
 #    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
 #  end


# passing this:
# SuggestionBoxMailer.new_suggestion_notification(@suggestion_box, @suggestion).deliver

  # def welcome_email(user)
  #   @user = user
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end

  # def truncated_message(message)
  #   truncate(message, length:25, omission:'...')
  # end

  def new_suggestion_notification(suggestion_box,suggestion)
    @suggestion_box = suggestion_box
    @suggestion = suggestion
    #@message_snippet = @suggestion.message.truncate(:length => 10)
    mail  to: @suggestion_box.owner_email, \
          subject: "New Suggestion in your #{@suggestion_box.short_name} Suggestion Box: #{truncate(@suggestion.message,length:25, omission:'...')}", \
          reply_to: "help@chirpybox.com"
  end
end
