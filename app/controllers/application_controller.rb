class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/movies' do
    movies = Movie.all
    movies.to_json
  end

  post '/movies' do
    # if session[:user_id]
      movie = Movie.new(title: params[:title], description: params[:description])
      if movie.save
        movie.to_json
      else
        { success: false, error: 'Failed to create movie' }.to_json
      end
    # else
    #   { success: false, error: 'Not authorized' }.to_json
    # end
  end

  put '/movies/:id' do |id|
    if session[:user_id]
      movie = Movie.find(id)
      if movie.update(title: params[:title], description: params[:description])
        { success: true }.to_json
      else
        { success: false, error: 'Failed to update movie' }.to_json
      end
    else
      { success: false, error: 'Not authorized' }.to_json
    end
  end

  delete '/movies/:id' do |id|
    if session[:user_id]
      movie = Movie.find(id)
      if movie.destroy
        { success: true }.to_json
      else
        { success: false, error: 'Failed to delete movie' }.to_json
      end
    else
      { success: false, error: 'Not authorized' }.to_json
    end
  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      { success: true }.to_json
    else
      { success: false, error: 'Invalid username or password' }.to_json
    end
  end

  delete '/logout' do
    session.clear
    { success: true }.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

end
