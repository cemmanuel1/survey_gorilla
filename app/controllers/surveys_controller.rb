get '/surveys' do
  puts '-----------'
	@surveys = Survey.all
  puts @surveys
  puts '----------------'
	erb :"surveys/surveys_all"
end

get '/survey/new' do
	erb :"surveys/create_survey"
end

