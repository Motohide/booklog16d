class Item
  include ActiveModel::Model
  attr_accessor :isbn, :name, :image, :author, :publisher, :release_date
end
