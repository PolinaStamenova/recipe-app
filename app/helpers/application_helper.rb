module ApplicationHelper
  def change_color_when_active(path)
    if current_page?(path)
      return "nav-active-link "
    end
  end
end
