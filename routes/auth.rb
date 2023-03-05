require 'json'

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
