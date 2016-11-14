module FormatDateHelper
  def format_date(date)
    date.strftime('%-m/%-d')
  end
end
