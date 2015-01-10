class ApiController < ApplicationController

	#Returns a message given the sponsor ID
	def getMessageFromSponsor 
		@sponsorMessages = Message.where(sponsor_id: params[:sponsor_id])
		render :json => @sponsorMessages
	end

	def getMessageFromCenter
		@centerMessages = Message.where(center_id: params[:center_id])
		render :json => @centerMessages
	end

end