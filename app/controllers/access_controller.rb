class AccessController < ApplicationController

	layout 'admin'
  
  def index
  	menu
  	render('menu')
  end

  def menu
  end

  def login
  end

  def attempt_login
  	authorized_user = AdminUser.authenticate(params[:username],
  		params[:password])
  	if authorized_user
  		flash[:notice] = "You are now logged in."
  		redirect_to(:action => 'menu')
  	else
  		flash[:notice] = "Invalid username/password combination."
  		redirect_to(:action => 'login')
  	end
  end

  def logout
  	flash[:notice] = "You have been logged out"
  	redirect_to(:action => 'login')
  end

end
