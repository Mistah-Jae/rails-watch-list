class BookmarksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  

  def destroy
    # list_id = params[:list_id]
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to bookmarks_path, status: :see_other
  end
end
