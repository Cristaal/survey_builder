require("bundler/setup")
Bundler.require(:default)
require("./lib/survey")
require("./lib/question")

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/survey') do
  title = params['title']
  @survey = Survey.create({ :title => title})
  @surveys = Survey.all()
  erb(:index)
end

get('/survey/:id') do
  @survey = Survey.find(params.fetch("id"))
  erb(:create)
end
