require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['Player 1'] = Player.new params['Player 1']
    session['Player 2'] = Player.new params['Player 2']
    redirect to '/play'
  end

  get '/play' do
    @player_1 = session['Player 1']
    @player_2 = session['Player 2']
    @action = session['action']
    erb :play
  end

  post '/hit-player-2' do
    session['action'] = "#{session['Player 2'].name} got smacked!"
    session['Player 2'].get_smacked
    redirect to '/play'
  end
end
