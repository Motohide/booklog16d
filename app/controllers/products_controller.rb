class ProductsController < ApplicationController
  before_action :admin_user,only:[:new, :create]

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to :root
    else
      render :new
    end
  end

  def search
  end

private
  def product_params
    params.require(:product).permit(:name, :image, :author, :publisher, :release_date)
  end

  def admin_user
    redirect_to :root unless current_user.admin?
  end
end
