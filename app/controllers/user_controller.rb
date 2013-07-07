get '/user/:id' do |id|
	@surveys = Survey.all

	@user = User.find(id)
	erb :user
end

get "/user/logout" do
  session[:user_id] = nil
  redirect "/"
end
