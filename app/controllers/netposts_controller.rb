class NetpostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: [:destroy]
  def new 
  	@netpost = Netpost.new 
  end 
  
  def show
    @netpost = Netpost.find(params[:id])
   
  end 

  def index
    @netposts = Netpost.all

  end

  def create
    @netpost = current_user.netposts.build(netpost_params)
    if @netpost.save
      flash[:success] = "post created!"
      redirect_to main_path
    else
      @feed_items = []
      render 'static_pages/main'
    end
  end

  def destroy
    @netpost.destroy
    flash[:success] = "post deleted"
    redirect_to request.referrer || root_url
  end

  private

    def netpost_params
      params.require(:netpost).permit(:content)
    end

    def correct_user
      @netpost = current_user.netposts.find_by(id: params[:id])
      redirect_to root_url if @netpost.nil?
    end
end
