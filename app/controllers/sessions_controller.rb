class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:email], params[:password], params[:remember_me])
  	if user
  		redirect_back_or_to root_url, :notice => t(:login_in)
  	else
  		flash.now.alert = t(:login_error)
  		render :new
  	end
  end
end
