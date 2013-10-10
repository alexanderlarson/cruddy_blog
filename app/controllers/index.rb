require 'bcrypt'

# GET ==========================================
get '/' do
  erb :index
end

get '/login' do
  erb :index
end

get '/all' do
  @allposts = Post.all
  erb :all
end

get '/profile/:user_id' do
  @user = User.find(params[:user_id])
  erb :profile
end


get '/all/:user_id' do
  @user = User.find(params[:user_id])
  @user_posts = @user.posts
  erb :alluser
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :singlepost
end

get '/newpost' do
  if current_user
    @user_id = current_user.id
   erb :new_post
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

# POST ==========================================

post '/login' do
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      session[:id] = @user.id
      redirect "/profile/#{session[:id]}"
    else
      redirect '/login'
    end
  erb :profile
end

post '/post/:post_id' do
  @post_id = params[:post_id]
  @user_id = session[:id]
  redirect "/post/#{@post_id}"
end

post '/newpost/:user_id' do
    @user_id = params[:user_id] #kinda overkill
    @post = Post.create(title: params[:title], url: params[:url], user_id: @user_id)
  redirect '/'
end

post '/newuser' do
  @user = User.create(params[:newuser])
  redirect "/profile/#{@user.id}"
end


