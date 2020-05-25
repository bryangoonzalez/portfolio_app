class ApplicationController < ActionController::Base

  def after_registration_path_for(user)
    root_path
  end
  
  def after_sign_in_path_for(user)
    root_path
  end

end
