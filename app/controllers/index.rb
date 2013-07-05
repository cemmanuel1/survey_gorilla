get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  # @user = User.find_by_email(params[:email])
  # if @user && (params[:password] == @user.password)
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect "/user/#{@user.id}"
  else
    @message = "Login Failed: Invalid Username or Password"
    erb :index
  end
end

post '/signup' do
  @user = User.create(params[:user])
  if @user
    redirect "/user/#{@user.id}"
  else
    redirect "/"
  end
end

get '/signup' do

end

