require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params["Player 1"]
    @player_2 = params["Player 2"]
    erb :play
  end

end
