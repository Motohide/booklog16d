module ReviewDecorator

  def set_created_at
    created_at.to_date.strftime("%Y年%m月%d日")
  end
end
