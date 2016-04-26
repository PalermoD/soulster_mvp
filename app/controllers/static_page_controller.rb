class StaticPageController < ApplicationController
  def index
  	if logged_in?
  	  @user = User.find_by(id: session[:user_id])
      #@network = Network.find(params[:id])
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def main
  	if logged_in?
  	  @user = User.find_by(id: session[:user_id])
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end
