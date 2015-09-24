require 'sinatra'
require 'mail'

set :bind, '0.0.0.0'
# set :port, 9494

get '/awesome.jpg' do
  #s = request.referer
  s = "#{request.env}"
  # puts s
  # s
  email s
  send_file('./awesome.jpg', :disposition => 'inline')
end

def email(str)
  mail = Mail.new do
    from     'wxtest@ruby.gem'
    to       'tychogrouwstra@gmail.com'
    subject  'wx headers'
    body     str
  end
  mail.delivery_method :sendmail
  mail.deliver
end
