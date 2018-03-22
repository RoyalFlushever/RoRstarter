class UsersController < ApplicationController
  
  # GET /users/new
  def new
  	@user = User.new
  end

  # GET /users/1
  def show
  	@user = User.find(params[:id])
  end

  # POST /users
  def create
  	@user = User.new(user_params)

  	if @user.save
      log_in @user
  		flash.now[:success] = "Welcome to our RoR APP!"	
  		redirect_to @user	
  	else
  		render 'new'
  	end
  end

  private

  	def user_params 
	  	params.required(:user).permit(:name, :email, :password, :password_confirmation)
	  end

end
