class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_cookies
    cookies[:anim_run] = true
    cookies[:test] = "test"
  end
  
  def show_cookies
    @anim_val    = cookies[:anim_run]
  end

end
