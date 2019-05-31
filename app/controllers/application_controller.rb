class ApplicationController < ActionController::Base

  #после авторизации редирект на index Goal
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || goals_path
  end
end
