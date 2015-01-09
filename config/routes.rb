Rails.application.routes.draw do
  resources :sponsors

  resources :messages

  resources :centers

  resources :children


  post 'twilio/voice' => 'twilio#voice'
  post 'twilio/status' => 'twilio#status'
end
