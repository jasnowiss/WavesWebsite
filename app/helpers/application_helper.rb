module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Waves"
    if page_title.empty?
      return base_title
    else
      # base_title + " | " + page_title
      return page_title
    end
  end
  
end