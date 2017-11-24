class UsersController < ApplicationController
  before_action :set_user, only:[:profile, :edit,:update, :show]
  before_action :check_user, only:[:edit, :update]

  def show
      @bookmarks = current_user.bookmarks.map{|book| book.isbn.to_i}

      openBD_uri = URI.parse('https://api.openbd.jp/v1/get?isbn=' +"#{@bookmarks}")
      openBD_json = Net::HTTP.get(openBD_uri)
      openBD_result = JSON.parse(openBD_json).to_a

      @books = []

      openBD_result.each_with_index do |data, i|
        if data.present?
          item = Item.new(isbn: data["summary"]["isbn"],
                          name: data["summary"]["title"],
                          image: data["summary"]["cover"],
                          author: data["summary"]["author"],
                          publisher: data["summary"]["publisher"],
                          release_date: data["summary"]["pubdate"])
          @books << item
        end
      end
  end


  def edit
  end

  def update
      if current_user.id == @user.id && @user.update(update_params)
        redirect_to profile_user_path(current_user), notice: 'プロフィールを編集しました'
      else
        render 'edit'
      end
  end


  def profile
  end



  private
  def update_params
    params.require(:user).permit(:email, :nickname, :gender, :birth_date, :avatar, :prefecture_code, :hometown, :website, :biography, :job)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def check_user
    if @user.id != current_user.id
      redirect_to profile_user_path(current_user)
    end
  end
end
