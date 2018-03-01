require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('controllers/albums_controller')
require_relative('controllers/artists_controller')


get '/' do
  erb(:home)
end

get '/inventory' do
  @albums = Album.all()
  erb(:inventory)
end

post '/inventory' do
  @albums = Album.new(params)
  @albums.save()
  redirect '/inventory'
end
