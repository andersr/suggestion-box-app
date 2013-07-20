class SuggestionBoxMailer < ActionMailer::Base
  default from: 'help@chirpybox.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.suggestion_box_mailer.new_suggestion_notification.subject
  #
 def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end


  def new_suggestion_notification(suggestion_box)

    # this instance variable can be shared in the email view
   # @greeting = "Hi"
    @suggestion_box = suggestion_box

    mail(to: @suggestion_box.owner_email, subject: 'New posting in the BCL suggestion box!')
  end
end
