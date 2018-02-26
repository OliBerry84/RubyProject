require_relative('../db/sql_runner.rb')

class Artist

  attr_reader( :name, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists
    (
      name
    )
    VALUES
    (
    $1
    )
    RETURNING id"
    values = [@name]
    results = SqlRunner.run( sql, values )
    @id = results[0]['id'].to_i
  end

  def Artist.all()
    sql = 'SELECT * FROM artists;'
    artists = SqlRunner.run( sql )
    return artists.map { |artist_hash| Artist.new(artist_hash) }
  end

  def Artist.delete_all()
  sql = "DELETE FROM artists"
  SqlRunner.run( sql )
  end


end
