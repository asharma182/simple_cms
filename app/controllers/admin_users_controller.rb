class AdminUsersController < ApplicationController

  layout 'admin'

  before_filter :confirm_logged_in

  def index
  	list
  	render('list')
  end

  def list
  	@admin_users = AdminUser.sorted
  end

  def new
  	@admin_users = AdminUser.new
  end

  def create
  	@admin_users = AdminUser.find(params[:admin_user])
  	if @admin_user.save
  		flash[:notice] = 'Admin user created.'
  		redirect_to(:action => 'list')
  	else
  		render("new")
  	end
  end

  def edit
  	@admin_users = AdminUser.find(params[:id])
  end

  def update
  	@admin_users = AdminUser.find(params[:id])
  	if @admin_user.update_attributes(params[:admin_user])
  		flash[:notice] = 'Admin user created.'
  		redirect_to(:action => 'list')
  	else
  		render("edit")
  	end
  end

  def delete
  	@admin_users = AdminUser.find(params[:id])
  end

  def destroy
  	AdminUser.find(params[:id]).destroy
  	flash[:notice]="Admin User destroyed."
  	redirect_to(:action => 'list')
  end

end
