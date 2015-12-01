class SessionsController < ApplicationController

  def new
  end

  def create
    user = Member.find_by(lastName: params[:session][:name])
    if user && user.password == params[:session][:password]
	  log_in user
      remember user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end