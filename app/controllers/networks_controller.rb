class NetworksController < ApplicationController

	def new
		@network = Network.new
	end 

end
