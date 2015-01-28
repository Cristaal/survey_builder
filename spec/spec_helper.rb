ENV['Rack_ENV'] = 'test'

require("bundler/setup")
require("sinatra/activerecord")
require("survey")
require("question")
require("titlecase")
Bundler.require(:default)

 RSpec.configure do |config|
   config.after(:each) do
     Survey.all().each() do |survey|
       survey.destroy()
     end
     Question.all().each() do |question|
       question.destroy()
     end
   end
 end
