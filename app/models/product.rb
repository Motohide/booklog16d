class Product < ApplicationRecord

 mount_uploader :image, ImageUploader
 validates :name, presence: true, uniqueness: :true
 validates :author, presence: true
 validates :publisher, presence: true
end
