require_relative('../db/sql_runner.rb')

class Manufacturer

  attr_reader( :name, :id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO manufacturer
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

  def Manufacturer.all()
    sql = 'SELECT * FROM manufacturer;'
    manufacturer = SqlRunner.run( sql )
    return manufacturer.map { |manufacturer_hash| Manufacturer.new(manufacturer_hash)}
  end

  def Manufacturer.delete_all()
  sql = "DELETE FROM manufacturer"
  SqlRunner.run( sql )
  end


end
