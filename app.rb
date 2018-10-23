require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    text = params[user_phrase]
    @final_phrase = PigLatinizer.new(text)
    
    erb :results
  end
end