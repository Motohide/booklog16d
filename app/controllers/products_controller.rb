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

  def show
    @product = Product.find(params[:id])
    @review_total = @product.reviews.where.not(body: nil).length
    @average_rate = @product.reviews.average(:rate)
    @review = Review.find_or_create_by(product_id: params[:id], user_id: current_user.id) if user_signed_in?
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
