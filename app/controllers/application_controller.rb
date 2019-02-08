class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def after_sign_out_path_for(resource_or_scope)
	admin_front_page_path
  end
  
  def after_sign_out_path_for(resource_or_scope)
	admin_upload_note_path
  end
  
end
