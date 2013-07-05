get '/surveys' do
	@surveys = Survey.all
	erb :"surveys/surveys_all"
end

get '/survey/new' do
	erb :"surveys/create_survey"
end
