class PagesController < ApplicationController

  def home
    cookies[:test] = "test"

    if cookies[:day_visit] != nil
      cookies.delete(:anim_false)
    else 
      cookies[:anim_false] = { 
        value: true, 
      }
      cookies[:day_visit] = { 
        value: true, 
        expires: 1.day.from_now 
      }
    end
  end

  def project_aims

  end

end