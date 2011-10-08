class MembersController < ApplicationController
  def index
  	if !session[:logged_in]
  		flash[:message] = "You must be logged in to view this page"
  		flash[:type] = "error"
  		redirect_to("/")
  	end
  end

end
