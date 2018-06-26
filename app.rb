require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    @arr = text_from_user.split(' ')

    words = TextAnalyzer.new(text_from_user)
    @vowels = words.count_of_vowels

    @consonants = words.count_of_consonants

    @most_used_letter = words.most_used_letter

    erb :results
  end
end
