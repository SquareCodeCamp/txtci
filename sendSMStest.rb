

#Initialize client object to make requests to the Twilio REST API
client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token

#Sending message
message = client.messages.create from: '9717035141', to: '5038809531', body: 'Fun test text!'

#some message
render plain: message.status