require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artists.rb')
require_relative('../models/albums.rb')

get '/addartist' do
  @artists = Artist.all()
  erb(:"artist/addartist")
end

post '/addartist' do
  @artists = Artist.new(params)
  @artists.save()
  redirect '/inventory'
end
