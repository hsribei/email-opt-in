require 'sinatra'
require 'customerio'

post '/' do
  customerio = Customerio::Client.new(ENV['CIO_SITE_ID'], ENV['CIO_SECRET_API_KEY'])

  customerio.identify(
    id: params[:email],
    email: params[:email],
    created_at: Time.now.to_i,
    first_name: params[:name].split(/\w+/).first,
    raw_name: params[:name]
  )
  puts params.inspect
end
