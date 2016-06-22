class Admin::AdministrationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin!

  layout "admin/administration"
end
