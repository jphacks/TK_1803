module ApplicationHelper
  def simple_time(time)
    time.strftime("%Y年%m月%d日 %H時%M分　")
  end

  def page_title
    title = "PITCH ME"
    title = @page_title + " | " + title if @page_title
    title
  end
end
