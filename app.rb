require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    @sessions = session_secret, "secret"
end
end 
