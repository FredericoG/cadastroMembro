class CreateAddresses < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :addresses do |t|
      t.integer :codeAddress
      t.integer :codeNeighborhood
      t.string :addressZipCode, :limit => 100
      t.string :addressStreet, :limit => 100
      t.string :addressAdd, :limit => 100
      t.integer :neighborhood_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
