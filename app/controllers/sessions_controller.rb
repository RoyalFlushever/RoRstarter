class SessionsController < ApplicationController
  def create
  	customer = Customer.from_omniauth(request.env["omniauth.auth"])
  	session[:customer_id] = customer.id
  	redirect_to root_path
  end

  def destroy
  	session[:customer_id] = nil
  	redirect_to root_path
  end
end
