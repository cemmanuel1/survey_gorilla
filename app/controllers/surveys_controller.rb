get '/surveys' do
	@surveys = Survey.all
	erb :"surveys/surveys_all"
end

get '/survey/new' do
	erb :"surveys/create_survey"
end

post '/survey/new' do
  erb :"surveys/create_survey"
end

get '/survey/:survey_id' do |id|
  @survey = Survey.find(id)
  erb :"surveys/show_survey"
end

get '/load_partial' do 
  erb :"surveys/_question_form", layout: false
end
