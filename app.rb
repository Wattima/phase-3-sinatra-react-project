require 'sinatra'
require 'sinatra/activerecord'
require_relative 'app/models/user'
require_relative 'app/models/movie'
require_relative 'app/routes/auth'
require_relative 'app/routes/movies'

set :database, 'sqlite3:db.sqlite3'

enable :sessions

get '/' do
  erb :index
end
