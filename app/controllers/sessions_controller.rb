class SessionsController < ApplicationController

  def new
  end

  def create
    user = Member.find_by(lastName: params[:session][:name])
    if user && user.password == params[:session][:password]
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end