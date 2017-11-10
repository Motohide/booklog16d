module UserDecorator

  def set_gender
    if gender = 1
      "の男性"
    elsif gender = 2
      "の女性"
    end
  end

  def set_birth_date
    birth_date.strftime("%Y年%m月%d日")
  end
end
