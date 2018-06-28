require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    ## grabs the text from the user
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
