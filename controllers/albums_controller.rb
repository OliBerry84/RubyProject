require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/albums.rb')
require_relative('../models/artists.rb')

get '/addalbum' do
  @artists = Artist.all()
  erb(:"album/addalbum")
end

get '/album/:id' do
  @artists = Artist.all()
  @album = Album.find(params[:id].to_i)
  erb(:"album/albumedit")
end

get '/album/:id/edit' do
  @artists = Artist.all()
  @album = Album.find(params[:id].to_i)
  erb(:"album/editalbum")
end

post '/album/:id' do
  @artists = Artist.all()
  @album = Album.new(params)
  @album.update()
  redirect to '/inventory'
end

post '/album/:id/delete' do
  @artists = Artist.all()
  @album = Album.find(params[:id].to_i)
  @album.delete()
  redirect to '/inventory'
end
