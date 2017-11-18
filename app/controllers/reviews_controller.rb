class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
  end
end


private

def review_params
 params.require(:review).permit(:reading_status, :rate, :body, :note, :public_status, :spoiler_status).merge(user_id: current_user.id, product_id: params[:product_id])
end
