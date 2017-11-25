class ReviewsController < ApplicationController
  before_action :set_review, only:[:edit, :update]

  def edit
      openBD_uri = URI.parse('https://api.openbd.jp/v1/get?isbn=' + params[:item_id])
      openBD_json = Net::HTTP.get(openBD_uri)
      openBD_result = JSON.parse(openBD_json).to_a
      data = openBD_result[0]

      @item = Item.new(isbn: data["summary"]["isbn"],
                          name: data["summary"]["title"],
                          image: data["summary"]["cover"],
                          author: data["summary"]["author"],
                          publisher: data["summary"]["publisher"],
                          release_date: data["summary"]["pubdate"])
  end

  def update
    if @review.update(review_params)
      redirect_to item_path(@review.isbn), notice: 'レビューを編集しました'
    else
      render :edit, alert: 'レビューの編集に失敗しました'
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
