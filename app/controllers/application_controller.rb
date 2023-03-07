require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    enable :cross_origin
  end

end
