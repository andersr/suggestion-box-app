class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :suggestion_box

  # def suggestion_box
  #     SuggestionBox.find(params[:suggestion_box_id])
  # end

private
  def current_user
    #cache in an instance variable, so only fetched one time per session
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  #above method is only available to the controller
  #make this method available to the view as well
  helper_method :current_user

def authorize
  redirect_to login_url, alert: "Please sign in to access that." if current_user.nil? 
end

protected
def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == "bcl" && password == "bcl718"
  end
end

end
