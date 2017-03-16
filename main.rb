
require 'sinatra'
require 'sinatra/reloader'
require "pry"
require "active_record"
require_relative 'database_config'
require_relative "models/comment"
require_relative "models/group"
require_relative "models/user"
require_relative "models/interest"
require_relative "models/user_group"
require_relative "models/user_interest"
require_relative "models/location"

enable :sessions
# before_filter :require_login

# private
#   def require_login
#     unless current_user
#       redirect :login
#     end
#   end
# end

helpers do

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?  # should return a boolean
    !!current_user
  end


end

get '/' do
  erb :index
end

get '/session/new' do
  erb :login
end

post '/session' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect '/session/new'
end
