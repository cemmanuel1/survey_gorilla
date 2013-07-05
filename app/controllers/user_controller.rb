get '/user/:id' do |id|
	@surveys = Survey.all
	@user = User.find(id)
	erb :user
end
