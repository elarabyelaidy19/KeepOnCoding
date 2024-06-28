class CreateMaterialzedView < ActiveRecord::Migration[7.1]
  def up 
    excecute <<-SQL 
      CREATE MATERIALIZED VIEW IF NOT EXISTS materialized_view AS
      SELECT
        vehicles.id,
        vehicles.name,
        locations.address,
        locations.latitude,
        locations.longitude
      FROM
        vehicles
      INNER JOIN
        locations
      ON
        vehicles.id = locations.id
    SQL
  end 
  
  def down 
    execute "DROP MATERIALIZED VIEW IF EXISTS materialized_view"
  end 
end
