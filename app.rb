require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

class DCShows

  get '/feed.xml' do
    url = "http://api.songkick.com/api/3.0/metro_areas/1409/calendar.xml?apikey=" + ENV['API_KEY']
    res = HTTParty.get( url )
    @shows =  res.body
    erb :feed
  end

end