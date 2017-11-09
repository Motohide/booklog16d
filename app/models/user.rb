class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include JpPrefecture
  jp_prefecture :prefecture_code

   mount_uploader :avatar, AvatarUploader
end
