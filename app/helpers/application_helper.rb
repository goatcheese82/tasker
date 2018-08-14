module ApplicationHelper
  def current_user
    @current_user.id = session[:user_id]
  end
end
