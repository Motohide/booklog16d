class ReviewsController < ApplicationController
  before_action :set_review, only:[:edit, :update]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
    if @review.update(review_params)
      redirect_to :root
    else
      render :edit
    end
  end

end

private

def review_params
 params.require(:review).permit(:reading_status, :rate, :body, :note, :public_status, :spoiler_status).merge(user_id: current_user.id, product_id: params[:product_id])
end

def set_review
  @review = Review.find(params[:id])
end
