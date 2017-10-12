class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# #New 1
#   def current_user
#   	return unless session[:user_id]
#   	#@current_user ||= User.find(session[:user_id])
#   	@current_user ||= User.find_by_id(params[:user_id]) || User.find_by_id(params[:id])
#   end
# #New 2

  include UsersHelper 


end
