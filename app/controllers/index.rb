require 'bcrypt'

# GET ==========================================
get '/' do
  @allposts = Post.all
  erb :index
end
