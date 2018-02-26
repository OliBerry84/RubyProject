require_relative('../db/sql_runner.rb')

class Motorbike

  attr_reader( :manufacturer_id, :model, :cc, :price, :quantity, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @manufacturer_id = options['manufacturer_id'].to_i
    @model = options['model']
    @cc = options['cc'].to_i
    @price = options['price'].to_i
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO motorbikes
    (
      manufacturer_id,
      model,
      cc,
      price,
      quantity
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@manufacturer_id, @model, @cc, @price, @quantity]
    results = SqlRunner.run( sql, values )
    @id = results[0]['id'].to_i
  end

  # def motorbikes()
  #   sql = "SELECT motorbikes.*
  #   FROM motorbikes
  #   INNER JOIN manufacturer
  #   ON motorbikes.manufacturer_id = manufacturer.id
  #   WHERE motorbikes.manufacturer_id = $1"
  #   values = [@id]
  #   motorbikes = SqlRunner.run(sql, values)
  #   result = motorbikes.map {|motorbike_hash| Motorbike.new(motorbike_hash)}
  #   return result
  # end

  def Motorbike.all()
    sql = 'SELECT * FROM motorbikes;'
    motorbikes = SqlRunner.run( sql )
    return motorbikes.map { |motorbike_hash| Motorbike.new(motorbike_hash)}
  end

  def Motorbike.delete_all()
  sql = "DELETE FROM motorbikes"
  SqlRunner.run( sql )
  end

end
