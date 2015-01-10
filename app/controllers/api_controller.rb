class ApiController < ApplicationController

	#Returns a message given the sponsor ID
	#GET /find/something
	def getMessageFromSponsor 
		@sponsorMessage = Message.where(sponsor_id: params[:sponsor_id])
	end
end