class ReviewsController < ApplicationController
  before_action :set_review, only:[:edit, :update]

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
    if @review.update(review_params)
      redirect_to product_path(@review.product_id)
    else
      render :edit
    end
  end

end

private

def review_params
 params.require(:review).permit(:reading_status, :rate, :body, :note, :public_status, :spoiler_status).merge( user_id: current_user.id)
end

def set_review
  @review = Review.find(params[:id])
end
