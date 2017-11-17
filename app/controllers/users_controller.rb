class UsersController < ApplicationController
  before_action :set_user, only:[:profile, :edit,:update, :show]
  before_action :check_user, only:[:edit, :update]

  def show
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
