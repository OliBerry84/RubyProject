require_relative('../db/sql_runner.rb')

class Album

  attr_reader( :artist_id, :name, :price, :quantity, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
    @name = options['name']
    @price = options['price'].to_i
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (
      artist_id,
      name,
      price,
      quantity
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@artist_id, @name, @price, @quantity]
    results = SqlRunner.run( sql, values )
    @id = results[0]['id'].to_i
  end

  def Album.all()
    sql = 'SELECT * FROM albums;'
    albums = SqlRunner.run( sql )
    return albumss.map { |album_hash| Album.new(album_hash)}
  end

  def Album.delete_all()
  sql = "DELETE FROM albums"
  SqlRunner.run( sql )
  end

end
