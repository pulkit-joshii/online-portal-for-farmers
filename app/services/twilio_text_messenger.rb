require 'rubygems'
require 'twilio-ruby'

class TwilioTextMessenger
    attr_reader :message
    AUTH_TOKEN = '2ef865918d29639522a8de732b482db2'
    ACCOUNT_SID = 'ACc42cb9046b4db9a575453054ec470bbb'

    def initialize(message, phone)
        @message = message
        @phone = phone
    end
  
    def call
        client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)
        client.messages.create(from: "+19048775921", to: @phone, body: @message)
    end
  end
  