class LoginController < ApplicationController
	require 'digest/sha1'
  def auth
  	if params[:email].empty? or params[:password].empty?
  		flash[:message] = "Username or password required"
  		flash[:type] = "error"
  		redirect_to("/")
  	else
	  	
    @user = User.where(:email => params[:email]).first
    if @user
    if @user.password == params[:password]
      		session[:id] = @user.id
	  		session[:username] = @user.username
	  		session[:email] = @user.email
	  		session[:fname] = @user.fname
	  		session[:lanme] = @user.lname
	  		session[:logged_in] = true
	  		flash[:message] = "You have logged in successfully!"
  			flash[:type] = "success"
	  		redirect_to("/")
    else
     	flash[:message] = "Invalid username or password"
	 		flash[:type] = "error"
	  		redirect_to("/")
	  		
	  	
  	end
  else
  	flash[:message] = "Invalid username or password"
	 		flash[:type] = "error"
	  		redirect_to("/")
  end
  	end
  

  end
  def logout
  	reset_session
  	redirect_to("/")
  end
  def register
  	if session[:logged_in]
	  	redirect_to("/")
	else
	  	if params[:submitted]
	  		if params[:password] == params[:passconf]
		  		@user = User.new
		  		@user.username = params[:username]
		  		@user.fname = params[:fname]
		  		@user.lname = params[:lname]
		  		@user.password = params[:password]
		  		@user.email = params[:email]
		  		@user.save
		  		if @user.errors.empty?
		  			redirect_to("/")
		  		end
		  	else
		  		@user = false
		  		flash[:form_error] = "passwords must match!" 

		  	end
	  	

	  	end
	  end
	end

end
