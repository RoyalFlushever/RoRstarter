class SessionsController < ApplicationController
  
  def create

  	user = User.find_by email: params[:session][:email].downcase
  	if user && user.authenticate(params[:session][:password])
      log_in user
  		redirect_to current_user
  	else
      flash.now[:danger] = 'Invalid email/password combination' 
  		render 'new'	
    end
  	
  end

  def destroy
    log_out 
  	redirect_to root_path
  end

  def new
  end

end
