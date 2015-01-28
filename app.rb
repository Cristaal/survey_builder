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

get("/survey/:id") do
  @survey = Survey.find(params.fetch("id"))
  @questions = @survey.questions
  erb(:create)
end

post("/question") do
  question = params['question']
  survey_id = params['survey_id']
  @question = Question.create({:title => question, :survey_id => survey_id})
  @survey = Survey.find(survey_id)
  @questions = @survey.questions
  erb(:create)
end
