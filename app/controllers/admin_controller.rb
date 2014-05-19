class AdminController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin_user!

  layout 'admin'
end
