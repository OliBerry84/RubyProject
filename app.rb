require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/manufacturer.rb')
require_relative('./models/motorbikes.rb')

get '/' do
  @motorbikes = Motorbike.all()
  erb(:index)
end

get '/newstock' do
  erb(:new)
end
