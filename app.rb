require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['Player 1'] = params["Player 1"]
    session['Player 2'] = params["Player 2"]
    redirect to '/play'
  end

  get '/play' do
    @player_1 = session['Player 1']
    @player_2 = session['Player 2']
    erb :play
  end
end
