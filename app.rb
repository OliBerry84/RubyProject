require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/albums.rb')
require_relative('./models/artists.rb')


get '/inventory' do
  @albums = Album.all()
  erb(:index)
end

post '/inventory' do
  @albums = Album.new(params)
  @albums.save()
  redirect '/inventory'
end

get '/addalbum' do
  @artists = Artist.all()
  erb(:addalbum)
end

get '/addartist' do
  @artists = Artist.all()
  erb(:addartist)
end

post '/addartist' do
  @artists = Artist.new(params)
  @artists.save()
  redirect '/inventory'
end

get '/album/:id' do
  @artists = Artist.all()
  @album = Album.find(params[:id].to_i)
  erb(:show)
end

get '/album/:id/edit' do
  @artists = Artist.all()
  @album = Album.find(params[:id].to_i)
  erb(:update)
end

post '/album/:id' do
  @artists = Artist.all()
  @album = Album.new(params)
  @album.update()
  redirect to '/inventory'
end

get '/' do
  erb(:home)
end
