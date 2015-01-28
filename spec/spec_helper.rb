ENV['Rack_ENV'] = 'test'

require("bundler/setup")
require("sinatra/activerecord")
require("survey")
require("question")
require("titlecase")
Bundler.require(:default)
