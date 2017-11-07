class ProductsController < ApplicationController

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to :root
    end
  end

  def show
  end

  def search
  end

private
  def product_params
    params.require(:product).permit(:name, :image, :author, :pulisher, :release_date)
  end
end
