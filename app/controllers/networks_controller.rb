class NetworksController < ApplicationController

	def new
		@network = Network.new
	end 

	def show 
		@network = Network.find(params[:id])
	end 

	def create
	    @network = Network.new(network_params)
          if @network.save
            flash[:success] = "Network Created"
            redirect_to root_url
          else
            render 'new'
        end 
	end 

	def edit 
	end 

	def update
	end 

	def destroy 
	end 

	private 

	  def network_params
	  	 params.require(:network).permit(:name, :description, :picture)
	  end 

end
