class SendSMS
    attr_accessor :message, :number
    ​
    def initialize(message, number)
        @message = message
        @number = number
    end
    ​
    def call
        account_sid = 'AC534b4e3bfd7c248027f6721be7abf902'
        auth_token = '4b1c491ff9e1bf678e654b4be6abd8fc'
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = '+12055283142' # My Twilio number

        client.messages.create(
        from: from,
        to: @number,
        body: @message
        )
    end
end