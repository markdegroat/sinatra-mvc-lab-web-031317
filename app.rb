require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end



  post '/piglatinize' do
    analyzed_text = PigLatinizer.new
    # analyzed_text.text = params[:user_text]

    @piglatinized_text = analyzed_text.to_pig_latin(params[:user_phrase])

    erb :piglatinize
  end

end
