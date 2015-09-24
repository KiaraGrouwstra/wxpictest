require 'sinatra'
require 'mail'

set :bind, '0.0.0.0'
# set :port, 9494

get '/awesome.jpg' do
  #s = request.referer
  s = "#{request.env}"
  puts s
  # s
  # email s
  send_file('./awesome.jpg', :disposition => 'inline')
end

def email(str)
  # Mail.defaults do
  #   smtp '127.0.0.1' # Port 25 defult
  # end
  mail = Mail.new do
    #from     'tychogrouwstra@gmail.com'
    #to       'tychogrouwstra@gmail.com'
    from     'tycho01@mailinator.com'
    to       'tycho01@mailinator.com'
    subject  'wx headers'
    body     str
  end
  mail.delivery_method :sendmail
  mail.deliver!
end
