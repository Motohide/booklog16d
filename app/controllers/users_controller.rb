class UsersController < ApplicationController
  def show
  end

  def my_books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(update_params)
        redirect_to :root, notice: 'プロフィールを編集しました'
      else
        render 'edit'
      end
  end

  private
  def update_params
    params.require(:user).permit(:email, :nickname, :gender, :birth_date, :avatar, :prefecture_code, :hometown, :website, :biography, :job)
  end

end
