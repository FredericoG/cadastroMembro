class CreateStreets < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :streets do |t|
      t.integer :neighborhood_id
      t.integer :city_id
      t.integer :uf_id
      t.string :add, :limit => 100
      t.string :number, :limit => 100
      t.integer :address_id

      t.timestamps
    end
  end

  def self.down
    drop_table :streets
  end
end
