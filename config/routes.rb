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
end
