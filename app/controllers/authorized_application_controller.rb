class AuthorizedApplicationController < ApplicationController
  before_filter :check_authorization
  
  
  def check_authorization
    if session[:user_id] == nil || session[:user_id] == ""
#     flash[:notice] = "Sorry! You need to login."
#     redirect_to("/signin")
    end
  end

end
