require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    @sessions = session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions << params[:item]
    erb :index
  end 


end
