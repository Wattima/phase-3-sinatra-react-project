class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/movies" do
    movies = Movie.all
    movies.to_json
  end

  # get "/users" do
  #   users = User.all
  #   users.to_json(include: :movies)
  # end

end
