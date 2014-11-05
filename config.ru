require "rubygems"
require "sinatra"

require File.expand_path '../app.rb', __FILE__

map ('/dcshows/') { run DCShows }