require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

    def voice
        response = Twilio::TwiML::Response.new do |r|
            r.Say 'Hey there', :voice => 'alice'
            r.Play 'http://linode.rabasa.com/cantina.mp3'
        end
    render_twiml response
    end


    def message
        twilio_phone_number = "4844832512"


        message_body = params["Body"]
        from_number = params["From"]
        
        @twilio_client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_token
 
        @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => from_number,
          :body => message_body
        )

        render text: "success"
    end

end