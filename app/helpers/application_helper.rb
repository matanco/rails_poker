module ApplicationHelper
  def  check_controller(controller)
    if (controller != 'welcome') || (controller.to_s.include? "devise") || (controller.to_s.include? "users")
      return true
    else
      return false
    end
  end
end
