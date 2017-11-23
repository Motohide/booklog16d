class Item
  include ActiveModel::Model
  attr_accessor :id,:isbn, :name, :image, :author, :publisher, :release_date
end
