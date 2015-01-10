Rails.application.routes.draw do
  resources :sponsors

  resources :messages

  resources :centers

  resources :children


  post 'twilio/voice' => 'twilio#voice'
  post 'twilio/sms' => 'twilio#message'

  root "application#index"

  # post 'twilio/status' => 'twilio#status'
  post 'notifications/notify' => 'notifications#notify'

  #TODO
  get 'find/sponsors/:sponsor_id', to: 'api#getMessageFromSponsor', as: 'sponsorMessage'
  get 'find/centers/:center_id', to: 'api#getMessageFromCenter', as: 'centerMessage'
  
end
