get '/surveys' do
	@surveys = Survey.all
	erb :"surveys/surveys_all"
end

get '/survey/new' do
	erb :"surveys/create_survey"
end

post '/survey/new' do
  survey = Survey.create(title: params[:title], creator_id: session[:user_id])
  session[:survey_id] = survey.id
  erb :"surveys/create_survey"
end

get '/survey/:survey_id' do |id|
  @survey = Survey.find(id)
  erb :"surveys/show_survey"
end

post '/complete_question' do 
	if params
    question= params[:survey][0]['question']
    last_question = Question.create(survey_id: session[:survey_id], content: question)
    params[:survey][0]['response'].each {|response| Choice.create(answer: response, question_id: last_question.id )}
    redirect '/load_form_partial'
  end
end

get '/load_form_partial' do
	erb :"surveys/_question_form", layout: false
end

get '/load_response_partial' do
  erb :"surveys/_response_form", layout: false
end

get '/finalize_survey' do
   redirect "/survey/#{session[:survey_id]}"
end
