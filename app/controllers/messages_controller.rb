class MessagesController < ApplicationController
  def new
    flash[:notice] = params[:notice]
  end
 
  def create
    # account_sid = 'AC534b4e3bfd7c248027f6721be7abf902'
    # auth_token = '4b1c491ff9e1bf678e654b4be6abd8fc'
    # client = Twilio::REST::Client.new(account_sid, auth_token)

    # from = '+12055283142' # Your Twilio number

    # client.messages.create(
    # from: from,
    # to: params[:number],
    # body: params[:message]
    # )
    # byebug
    sms = SendSMS.new(params[:message], params[:number])
    sms.call

    redirect_to(action: :new, notice: 'SMS enviado o/')
  end
end