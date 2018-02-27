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

  def Artist.name(id)
    sql = "SELECT name FROM artists WHERE id = #{id};"
    name = SqlRunner.run( sql )[0]["name"]
    return name
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

  def delete()
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end


end
