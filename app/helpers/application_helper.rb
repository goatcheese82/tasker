module ApplicationHelper
  def current_user
    @current_user = User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end
  
end
