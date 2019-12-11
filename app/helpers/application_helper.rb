module ApplicationHelper
  def humanize_date_collection(dates_array)
    dates_array.map do |date|
      [date.strftime('%A %H:%M%p'), date]
    end
  end
end
