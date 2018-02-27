require_relative('../db/sql_runner.rb')

class Album

  attr_reader( :artist_id, :name, :buyprice, :sellprice, :quantity, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
    @name = options['name']
    @buyprice = options['buyprice'].to_i
    @sellprice = options['sellprice'].to_i
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (
      artist_id,
      name,
      buyprice,
      sellprice,
      quantity
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@artist_id, @name, @buyprice, @sellprice, @quantity]
    results = SqlRunner.run( sql, values )
    @id = results[0]['id'].to_i
  end

  def Album.all()
    sql = 'SELECT * FROM albums;'
    albums = SqlRunner.run( sql )
    return albums.map { |album_hash| Album.new(album_hash)}
  end

  def Album.delete_all()
  sql = "DELETE FROM albums"
  SqlRunner.run( sql )
  end

  def stock_levels
      if @quantity <= 9
        return "Low Stock"
      elsif @quantity <= 19
        return "Medium Stock"
      else return "High Stock"
    end
  end

  # def profit_per_sale
  #   return @sellprice - @buyprice
  # end

  # def total_profit_per_album
  #   return (@sellprice * @quantity) - (@buyprice * @quantity)
  # end

  def update()
    sql = "UPDATE albums
    SET
    (
      artist_id,
      name,
      buyprice,
      sellprice,
      quantity
    ) =
    (
      $1, $2, $3, $4, $5
    )
    WHERE id = $6"
    values = [@artist_id, @name, @buyprice, @sellprice, @quantity, @id]
    SqlRunner.run( sql, values )
  end

  def Album.find( id )
    sql = "SELECT * FROM albums WHERE id = $1"
    values = [id]
    album = SqlRunner.run( sql, values )
    result = Album.new( album.first )
    return result
  end

  def delete()
    sql = "DELETE FROM albums
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

end
