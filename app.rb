require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piggy=PigLatinizer.new
    @results=piggy.to_pig_latin(params[:user_phrase])

    erb :piglatinizer
  end
end
