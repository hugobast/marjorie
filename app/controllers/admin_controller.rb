class AdminController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin_user!
  layout 'admin'

  def authenticate_admin_user!
    authenticate_user!

    unless current_user.is_admin?
      redirect_to root_url subdomain: false
    end
  end
end
