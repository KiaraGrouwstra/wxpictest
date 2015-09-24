require 'sinatra'

# set :bind, '0.0.0.0'
# set :port, 9494

get '/hi' do
  #s = request.referer
  s = "#{request.env}"
  puts s
  s
end
