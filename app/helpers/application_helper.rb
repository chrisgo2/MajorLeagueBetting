module ApplicationHelper

  def title
    base_title = "Major League Betting"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
