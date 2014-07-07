require 'sinatra'
require 'customerio'

post '/' do
  customerio = Customerio::Client.new("YOUR SITE ID", "YOUR API SECRET KEY")

  customerio.identify(
    id: params[:email],
    email: params[:email],
    created_at: Time.now.to_i,
    first_name: params[:name].split(/\w+/).first,
    raw_name: params[:name]
  )
end
