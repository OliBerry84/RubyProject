require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/albums.rb')
require_relative('./models/artists.rb')


get '/' do
  @albums = Album.all()
  erb(:index)
end
