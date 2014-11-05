require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'rexml/document'

class DCShows < Sinatra::Base

  get '/feed.xml' do
    url = "http://api.songkick.com/api/3.0/metro_areas/1409/calendar.xml?apikey=" + ENV['API_KEY']
    res = HTTParty.get( url )
    @shows =  REXML::Document.new(res.body).root
    erb :feed
  end

end
