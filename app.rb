require("bundler/setup")
Bundler.require(:default)

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/survey') do
end
