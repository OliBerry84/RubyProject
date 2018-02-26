require_relative('../db/sql_runner.rb')

class Motorbike

  attr_reader( :year, :manufacturer_id, :model, :engine_size, :price, :quantity, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @year = options['year'].to_i
    @manufacturer_id = options['manufacturer_id'].to_i
    @model = options['model']
    @engine_size = options['engine_size'].to_i
    @price = options['price'].to_i
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO motorbikes
    (
      year,
      manufacturer_id,
      model,
      engine_size,
      price,
      quantity
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING id"
    values = [@year, @manufacturer_id, @model, @engine_size, @price, @quantity]
    results = SqlRunner.run( sql, values )
    @id = results[0]['id'].to_i
  end

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
