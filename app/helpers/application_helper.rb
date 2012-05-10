module ApplicationHelper
  def admin_authorized?
    user_signed_in? && current_user.role == "admin"
  end
end
