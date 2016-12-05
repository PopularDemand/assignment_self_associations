class CreateHousesNeighbors < ActiveRecord::Migration[5.0]
  def change
    create_table :houses_neighbors do |t|
      t.integer :house_id
      t.integer :neighbor_id

      t.timestamps
    end
  end
end
