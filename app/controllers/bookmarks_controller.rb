class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to user_path(current_user)
    else
      render search_items
    end
  end
end


private

def bookmark_params
  params.require(:bookmark).permit(:isbn).merge(user_id: current_user.id)
end
