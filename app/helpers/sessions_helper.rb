module SessionsHelper

  # Logs in the given user.
  def log_in(member)
    session[:member_id] = member.id
  end
    
  # Remembers a user in a persistent session.
  def remember(member)
    member.remember
    cookies.permanent.signed[:member_id] = member.id
    cookies.permanent[:remember_token] = member.remember_token
  end
  
  # Returns the current logged-in user (if any).
  def current_user
  if (member_id = session[:member_id])
      @current_user ||= Member.find_by(id: member_id)
    elsif (member_id = cookies.signed[:member_id])
      user = Member.find_by(id: member_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Forgets a persistent session.
  def forget(member)
    member.forget
    cookies.delete(:member_id)
    cookies.delete(:remember_token)
  end
  
  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:member_id)
    @current_user = nil
  end
end