class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :suggestion_box

    def suggestion_box
    SuggestionBox.find(params[:suggestion_box_id])
  end


  # protected
  # def authenticate
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == "bcl" && password == "bcl718"
  #   end
  # end

end
