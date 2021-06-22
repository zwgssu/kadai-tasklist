class ApplicationController < ActionController::Base
  include Pagy::Backend #追記
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
