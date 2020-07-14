require_relative 'config/environment.rb'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])

  erb :results
end
end
