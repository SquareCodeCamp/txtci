class ApiController < ApplicationController

	#Returns a message given the sponsor ID
	#GET /find/something
	def getMessageFromSponsor 
		@sponsorMessages = Message.where(sponsor_id: params[:sponsor_id])
		render :json => @sponsorMessages
	end
end