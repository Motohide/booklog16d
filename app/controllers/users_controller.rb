class UsersController < ApplicationController
  before_action :set_user, only:[:profile, :edit,:update, :show]
  before_action :check_user, only:[:edit, :update]

  def show
      @bookmark = current_user.bookmarks.map{|book| book.isbn }
      @bookmark = @bookmark.map(&:to_i)
      bookmark_openbd_results = []

      @bookmark.each do |isbn|
        openBD_uri = URI.parse('https://api.openbd.jp/v1/get?isbn=' +"#{isbn}")
        openBD_json = Net::HTTP.get(openBD_uri)
        openBD_result = JSON.parse(openBD_json).to_a

        bookmark_openbd_results << openBD_result
      end


      @books = []

      binding.pry
      bookmark_openbd_results.each_with_index do |data, i|
        if data.present?
          item = Item.new(isbn: data[0]["summary"]["isbn"],
                          name: data[0]["summary"]["title"],
                          image: data[0]["summary"]["cover"],
                          author: data[0]["summary"]["author"],
                          publisher: data[0]["summary"]["publisher"],
                          release_date: data[0]["summary"]["pubdate"])
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
